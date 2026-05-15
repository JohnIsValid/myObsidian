# -*- coding: utf-8 -*-
"""
LittleBug Python 环境测试脚本
验证内置 WinPython 是否可以正常运行
"""
import sys
import os
import io
import datetime
import platform

sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='utf-8')

print("=" * 50)
print("[Python] LittleBug Python 环境测试")
print("=" * 50)
print()
print(f"Python 版本: {sys.version}")
print(f"操作系统: {platform.system()} {platform.release()}")
print(f"当前时间: {datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
print(f"工作目录: {os.getcwd()}")
print(f"脚本路径: {os.path.abspath(__file__)}")
print()
print("[OK] Python 环境运行正常！")
print("[OK] LittleBug Skills 脚本执行测试通过！")
print()
print("这段文字由 Python 脚本生成，说明：")
print("  1. 内置 WinPython 环境已正确配置")
print("  2. Skills 的 script 类型执行器工作正常")
print("  3. 可以在此基础上开发更复杂的 Python 技能")
