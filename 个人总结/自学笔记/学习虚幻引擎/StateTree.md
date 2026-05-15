
![[Pasted image 20260415141853.png]]
# 整体概述

1. State Tree（状态树）是一种资产，需要在引擎中新建；
2. 状态树很类似行为树，但大部分参数可以摆在UI上，无需行为树一样必须点进资产中查看脚本；
3. 状态树可以绑定到蓝图上，支持每个蓝图Pawn都有各自的状态树，不像行为树一样是绑定在Controller上的；
4. 状态树分为两种，一种是以AiCtrl为基础的，一种是以Actor为基础的；
5. 状态树需要在蓝图中以组件的形式添加或在蓝图脚本中添加；
6. 状态树是由多个State（状态）组成的，状态有子父级关系；

# 状态树

1. 状态树有：
    1. **使用者引用（Common）：**
        
        1. 状态树在一开始时会自动尝试获取使用者；
        
        **UE5官方文档原文：**
        
        用户可以将输入参数添加到状态树，这样就可以在树运行时引用这些输入参数；
        
        通过这些参数，用户可以根据树的使用情况来自定义树的使用方式；
        
        例如：用户可以定义一个动画资产参数，该参数可以从外部传递到树，以便在Gameplay过程中使用；
        
    2. **上下文数据（Context Data）：**
        
        1. 状态树的使用者的引用；
        
        
        
        **UE5官方文档原文：**
        
        "上下文数据"是指基于选定状态树模式而可供状态树使用的预定义数据；
        
        此数据会根据状态树的使用位置而变化；
        
        例如：Actor使用的状态树将以该Actor作为其上下文； 但是，如果将同一状态树用于智能对象行为，则上下文指的是使用的智能对象以及使用此智能对象的Actor；
        
        
        
    3. **全局变量（Parameters）：**可供状态叶使用；
        
        1. 类似行为树的黑板值，状态树中的所有状态都可以调用的变量；
    4. **Evaluators（求值器）：**
        
        1. 求值器可以动态监听参数的变化并为树中的Task提供所需要的参数，可以理解为一个变量监听器；
        2. 是一种全局变量和上下文数据补充（因为上下文数据和全局变量无法动态修改）；
        
        
        **UE5官方文档原文：**
        
        通过求值器可以向状态树公开无法通过"参数"或"上下文数据"公开的数据；
        
        求值器是一个单独的类，可以在运行时在状态树中执行。 求值器包含变量，并可以在树启动、停止以及每次更新时执行自定义代码；
        
        求值器的属性可以绑定到"参数"或"上下文数据"，也可以绑定到在求值器列表中更早出现的其他求值器；
        
    5. **全局任务（Global Tasks）：**
        
        1. 在整个状态树一开始时被执行，且在状态树销毁时才销毁；
        2. 全局过程中都会执行的任务节点；
        
        **UE5官方文档原文：**
        
        通过全局任务可以运行在树启动和停止事件之间激活的状态树任务；
        
        如果需要可用于状态选择的永久数据，便可以使用全局任务；
        
        例如：时间系统可以创建一个用于确定当前时间的全局任务；由于全局任务是在树中的根状态之前启动的，因此在树启动时和第一次状态选择期间，此信息将可用；
        
        

# 状态

1. 状态有子父级关系；
    
2. 状态中可以按顺序执行多个Task（任务）；
    
3. 状态有多个配置；
    
    1. State（状态基础配置）：
        
        1. Type（状态类型）：
            1. State（状态）；
            2. Group（组）；
            3. Linked（链接子树）；
            4. Linked Asset（链接其他状态树）；
            5. Subtree（子树）；
        2. Selection Behavior（选择的方式）；
            1. None；
                1. 无任何行为，理论上正式的项目中永远不会出现这个选项；
            2. 尝试进入（Try Enter）
                1. 状态即使有子状态，也会被选中，选中后不会进入子状态；
            3. 尝试按顺序选择子项（Try Select Children In Order）
                1. 尝试按子状态在列表中出现的顺序选择第一个子状态；
                2. 如果没有子状态，则行为与尝试进入（Try Enter）相同；
            4. 尝试随机选择子项（Try Select Children At Random）
                1. 打乱子状态的顺序，并尝试选择第一个满足进入条件的子状态；
                2. 如果没有子状态，则行为与尝试进入（Try Enter）相同；
            5. 尝试选择最高效用的子项（Try Select Children With Highest Utility）
                1. 尝试选择具有最高效用分数的子状态；
                2. 如果多个状态的分数相同，则选择列表中的第一个状态；
            6. 尝试按效用随机加权选择子项（Try Select Children At Random Weighted By Utility）
                1. 按各状态的效用分数随机选择一个子状态；
                2. 选择各状态的概率是规格化的效用分数；
            7. 尝试遵循过渡（Try Follow Transitions）
                1. 当状态被认为需要过渡时，改为尝试触发过渡；
    2. Parameters（全局变量）；
        
        1. 专门属于此状态的全局变量；
        2. 当状态的类型为LinkAsset的时候，Parameters配置为引用的状态树的全局Parameters；
        
        ![[Pasted image 20260415142024.png]]
        
    3. Enter conditions（进入条件）；
        
        1. Required Event to Enter
            1. Tag
            2. Payload Struct
        2. Check Prerequisites when Activating Child Directly
    4. Selection Utility（权重选择器）；
        
        1. Weight
    5. Tasks（执行任务）；
        
    6. Transitions（转换）；
        
        1. Trigger（触发方式）；
            1. On State Complete；
                1. 简单转换，无任何额外参数，只需配置Transition To即可；
            2. On State Succeeded；
                1. 简单转换，无任何额外参数，只需配置Transition To即可；
            3. On State Failed；
                1. 简单转换，无任何额外参数，只需配置Transition To即可；
            4. On Tick；
                1. 复杂转换：有额外参数需要配置；
                    1. Priority；
                    2. Delay Transition；
                        1. Delay Duration：
                        2. Delay Random Variance：
            5. On Event；
                1. 复杂转换：有额外参数需要配置；
                    1. Required Event
                        1. Tag：
                        2. Payload Struct：
                    2. Priority；
                    3. Delay Transition；
                        1. Delay Duration：
                        2. Delay Random Variance：
        2. Transition To（转换到哪个状态）；
        3. Conditions（转换的前置条件）；
4. 关键词：State（状态），Enter Conditions（进入状态的前置条件），Task（状态的任务），Transitions（状态完成后转到哪个状态）；
    
    1. State（状态）：
        1. Type：
        2. Selection Behavior：
    2. EnterConditions（进入状态的前置条件）：
    3. Task（状态的任务）：
    4. Transitions（状态完成后转到哪个状态）：
5. 一个状态下可以执行多个Task；
    
6. StateTree的【EnterConditions】代表是否能进入此状态，如果进入不了，则不存在状态节点的成功与失败了；
    
7. StateTree的每个状态节点下可以有多个Task，但任何一个Task中执行了【蓝图节点：TaskFinish】都会导致整个状态节点完成，如果此状态下的此Task中还有后续的Task，则后续Task不会被执行了；
    

# 运行其他树

Link Asset

# 静态事件

Event

# 变量的功能性仓库

1. 功能性仓库是什么？
    1. 当变量进入这些仓库后会有特定的逻辑，这些逻辑包含是否可被编辑，自动绑定到其他变量等等；
2. 都有哪些功能性仓库
    1. Context：
        1. 仓库含义：代表自身拥有者的引用；
        2. 功能性：
            1. 在UI上有特殊显示；
            2. 此库中的变量可以自动关联到状态树的自身引用变量；
    2. Output
        1. 仓库含义：代表此库中的变量需要输出给其他的任务节点；
        2. 功能性：
            1. 在UI上有特殊显示；
    3. Input
        1. 仓库含义：代表此库中的变量作为输入变量，此变量来自其他 任务节点，需要绑定一个来自其他Task的变量或全局变量；
        2. 功能性：
            1. 在UI上有特殊显示；
            2. 在UI中无法输入参数；

# Debugger（状态树调试工具）

# 学习参考链接
[状态树全方位简介](https://www.bilibili.com/video/BV1SURZYoEnU/?spm_id_from=333.337.search-card.all.click)
[状态树全内容案例](https://www.youtube.com/watch?v=BAYZgAzs7RM)
