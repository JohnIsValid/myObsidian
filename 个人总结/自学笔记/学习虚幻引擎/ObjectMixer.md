# 用途

# 怎么使用

1. ObjecMixer包含两部分，【窗口UI】和【蓝图类型筛选器】；
    
2. 窗口一般都是新建一个EditorUtilityWidget，在EUW中新建一个ObjectMixerEditorUWidget来使用，如下图所示；
    
    ![[Pasted image 20260415141504.png]]
    
3. 【蓝图类型筛选器】一般是新建一个蓝图类ObjectMixerBlueprintObjectFilter，并在窗口中选中这个【蓝图类型筛选器】；
    ![[Pasted image 20260415141609.png]]
    ![[Pasted image 20260415141522.png]]
    
1. ObjectMixerBlueprintObjectFilter中有多个可覆写函数；
    
    ![[Pasted image 20260415141545.png]]
    
2. Get Column to Exclude（有些没被添加的变量也会显示，这个时候就需要用到这个函数屏蔽这些变量）；
    
3. Get Column to Show by Default（默认会勾选并显示哪些变量）；
    
4. Get Force Added Columns（会强制显示哪些变量）；
    
5. Get Object Classes to Filter（此筛选器会筛选出当前场景中的哪些蓝图类的实例）；
    
6. Get Object Classes to Place（被加到这个方法里的蓝图类可以在EUW中被Add到场景中）；
    
7. Get Object Mixer Placement Class inclusion Options（筛选器的蓝图类是否包含其子类）；
    
8. Get Object Mixer Property Inheritance Inclusion Options
    
9. Get Properties That Require List Refresh
    
10. Get Show Transient Objects
    
11. Should Include Unsupported Properties
    

# 使用技巧

1. 在EUW中，ObjectMixer配合按钮使用可以组合出各种各样的便捷功能，例如将选中的对象设置随机旋转，设置高度，重命名等等；
2. 【Get Object Classes to Filter】【Get Force Added Columns】【Get Column to Show by Default】【Get Column to Exclude】【Get Object Classes to Place】【Get Object Mixer Placement Class inclusion Options】以上6个方法是使用频率很高的，一般记住这几个，其他的都没啥太大用；

# 不清楚的或Bug

1. 从EUW到蓝图筛选器类型，任何一个环节出现问题都会导致筛选器的表现异常和编译失败（编译失败时引擎中也会显示编译成功）；
    
    1. 上述出现问题的情况会很多，无法依次列出；
2. 在工具栏打开的LightMixer不能用，因为会强制选中灯光类型的场景实例；
    
    ![[Pasted image 20260415141625.png]]
1. 蓝图筛选器保存并编译后，