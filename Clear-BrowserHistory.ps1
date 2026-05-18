param(
    [switch]$CloseBrowsers,
    [switch]$AggressiveFirefox
)

$ErrorActionPreference = "Continue"

function Remove-IfExists {
    param([string]$Path)

    if (Test-Path -LiteralPath $Path) {
        try {
            Remove-Item -LiteralPath $Path -Force -ErrorAction Stop
            Write-Host "Removed: $Path"
        }
        catch {
            Write-Warning "Could not remove: $Path ($($_.Exception.Message))"
        }
    }
}

function Clear-ChromiumHistory {
    param(
        [string]$Name,
        [string]$UserDataPath
    )

    if (-not (Test-Path -LiteralPath $UserDataPath)) {
        return
    }

    Write-Host ""
    Write-Host "Cleaning $Name..."

    $profileDirs = Get-ChildItem -LiteralPath $UserDataPath -Directory -ErrorAction SilentlyContinue |
        Where-Object { $_.Name -eq "Default" -or $_.Name -like "Profile *" -or $_.Name -eq "Guest Profile" }

    foreach ($profile in $profileDirs) {
        $targets = @(
            "History",
            "History-journal",
            "Visited Links",
            "Top Sites",
            "Top Sites-journal",
            "Shortcuts",
            "Shortcuts-journal",
            "Network Action Predictor",
            "Network Action Predictor-journal"
        )

        foreach ($target in $targets) {
            Remove-IfExists -Path (Join-Path $profile.FullName $target)
        }
    }
}

function Clear-FirefoxHistory {
    param([string]$ProfilesPath)

    if (-not (Test-Path -LiteralPath $ProfilesPath)) {
        return
    }

    Write-Host ""
    Write-Host "Cleaning Firefox..."

    $sqlite = Get-Command sqlite3 -ErrorAction SilentlyContinue
    $profiles = Get-ChildItem -LiteralPath $ProfilesPath -Directory -ErrorAction SilentlyContinue

    foreach ($profile in $profiles) {
        $places = Join-Path $profile.FullName "places.sqlite"
        if (-not (Test-Path -LiteralPath $places)) {
            continue
        }

        if ($sqlite) {
            $sql = @"
DELETE FROM moz_historyvisits;
DELETE FROM moz_inputhistory;
DELETE FROM moz_places
WHERE id NOT IN (SELECT fk FROM moz_bookmarks WHERE fk IS NOT NULL);
DELETE FROM moz_origins
WHERE id NOT IN (SELECT origin_id FROM moz_places WHERE origin_id IS NOT NULL);
VACUUM;
"@
            try {
                $sql | & $sqlite.Source $places
                Write-Host "Cleaned Firefox history database: $places"
            }
            catch {
                Write-Warning "Could not clean Firefox database: $places ($($_.Exception.Message))"
            }
        }
        elseif ($AggressiveFirefox) {
            $backup = "$places.backup-before-history-clear-$(Get-Date -Format yyyyMMddHHmmss)"
            try {
                Copy-Item -LiteralPath $places -Destination $backup -Force -ErrorAction Stop
                Remove-Item -LiteralPath $places -Force -ErrorAction Stop
                Remove-IfExists -Path "$places-wal"
                Remove-IfExists -Path "$places-shm"
                Write-Warning "Removed Firefox places.sqlite after making a backup. Firefox may rebuild bookmarks from its bookmark backups, but verify them after reopening."
            }
            catch {
                Write-Warning "Could not aggressively clear Firefox profile: $($profile.FullName) ($($_.Exception.Message))"
            }
        }
        else {
            Write-Warning "Skipped Firefox profile to protect bookmarks because sqlite3 is not installed. Re-run with -AggressiveFirefox only if you accept the bookmark risk and have backups."
        }

        Remove-IfExists -Path (Join-Path $profile.FullName "places.sqlite-wal")
        Remove-IfExists -Path (Join-Path $profile.FullName "places.sqlite-shm")
        Remove-IfExists -Path (Join-Path $profile.FullName "formhistory.sqlite")
        Remove-IfExists -Path (Join-Path $profile.FullName "formhistory.sqlite-wal")
        Remove-IfExists -Path (Join-Path $profile.FullName "formhistory.sqlite-shm")
    }
}

if ($CloseBrowsers) {
    "chrome", "msedge", "brave", "firefox", "opera", "vivaldi" | ForEach-Object {
        Get-Process -Name $_ -ErrorAction SilentlyContinue | Stop-Process -Force -ErrorAction SilentlyContinue
    }
}

Clear-ChromiumHistory -Name "Google Chrome" -UserDataPath "$env:LOCALAPPDATA\Google\Chrome\User Data"
Clear-ChromiumHistory -Name "Microsoft Edge" -UserDataPath "$env:LOCALAPPDATA\Microsoft\Edge\User Data"
Clear-ChromiumHistory -Name "Brave" -UserDataPath "$env:LOCALAPPDATA\BraveSoftware\Brave-Browser\User Data"
Clear-ChromiumHistory -Name "Vivaldi" -UserDataPath "$env:LOCALAPPDATA\Vivaldi\User Data"
Clear-ChromiumHistory -Name "Opera" -UserDataPath "$env:APPDATA\Opera Software\Opera Stable"
Clear-ChromiumHistory -Name "Opera GX" -UserDataPath "$env:APPDATA\Opera Software\Opera GX Stable"
Clear-FirefoxHistory -ProfilesPath "$env:APPDATA\Mozilla\Firefox\Profiles"

Write-Host ""
Write-Host "Done. Reopen your browsers to confirm history is cleared."
