# 相关学习视频

**WorldMachine基础知识与节点释义**

[https://www.bilibili.com/video/BV1t7411z7HR?p=1&vd_source=1ab246c6860ee0bd09778f4555fc9026](https://www.bilibili.com/video/BV1t7411z7HR?p=1&vd_source=1ab246c6860ee0bd09778f4555fc9026)

# 菜单翻译

工具Tool

收藏夹Favorites

宏Macros

生成器Generator

输出Output

结合器Combiner

过滤Filter

自然Natural

选择器Selector

转换器Converter

参数Parameter

流控制FlowControl

# 节点功能

## 布局生成器

![[Pasted image 20260415140525.png]]
![[Pasted image 20260415140557.png]]

|Rectangle|按长方形生成布局|
|---|---|
|Circle|按圆形生成布局|
|Polygon|按多边形生成布局|
|Path|按路径生成布局|

![[Pasted image 20260415140607.png]]

|Quality|质量等级|
|---|---|
|Background Value|背景高度|
|Invert Output|反转高度|
|Breakup Shapes|使用解体|

![[Pasted image 20260415140622.png]]

|Quality|解体强度|
|---|---|
|Frequency|解体尺寸|
|Roughness|粗糙度|

![[Pasted image 20260415140633.png]]

|Enable|是否显示|
|---|---|
|Default Value (Height)|生成时默认高度|
|Opacity (alpha)|地形强度|
|Type|裁剪或覆盖|
|Distance|地形衰减距离|
|Direction|坍塌方向|
|Curve|地形衰减曲线|
|Fade|过渡平滑|
|Shape Breakup|解体增幅|
|Path Width|路径宽度|

![[Pasted image 20260415140642.png]]

|Lock from changes|锁定编辑|
|---|---|
|Delete|删除|
|Bring to Front|置于顶层|
|Send to Back|置于底层|
|Rotate|旋转/快捷键R|
|Scale|缩放/快捷键S|
|Translate|移动/快捷键T|
|Use Bezier Path|是否使用贝塞尔曲线|
|Perform Curve Smoothing|自动平滑曲线|
|Edit Lofting Curve|编辑曲线高度分布|
|Drop Curve to Input Terrain||

![[Pasted image 20260415140652.png]]

|Enter Precise Value|进入点位置设置界面|
|---|---|
|Value Key-Point|点高度脱离默认值|
|Delete Vertex|删除点|
|Subdivide Vertex|两侧各新增一点|

## 基本噪波

![[Pasted image 20260415140732.png]]

![[Pasted image 20260415140738.png]]

|Plancement&Transfrom|坐标选择|
|---|---|
|Rotation|旋转方向|
|Feature Scale|噪波间距|
|Style|噪波类型|
|Persistence|噪点高差|
|Octaves|噪点强度|
|Seed|随机种子数|
|Middle elevation|整体海拔提高|
|Steepness|陡峭度|
|Scale to|高度计算方式|

## 柏林噪波

![[Pasted image 20260415140759.png]]

![[Pasted image 20260415140803.png]]

|Plancement|坐标选择|
|---|---|
|Rotation|旋转方向|
|Style|噪波类型|
|Feature Scale|噪间距|
|Persistence|噪点高差|
|Lacunarity|噪点密度|
|Octaves|噪点强度|
|Seed|随机种子数|
|Steepness|陡峭度|
|Middle elevation|整体海拔提高|
|Shapeguide lead-in level|传入Shapeguide参数强度控制（噪波强度）|
|Distortion guide level|传入Distortion guide参数强度控制（扭曲强度）|
|Persistence guide level|传入Persistence guide参数强度控制（剔除区域强度）|
|Activity|整体表面平滑|
|Offset|噪点偏移|
|Gain|获取量|
|Lead-in octave|引入级别|
|Type|引入类型|
|Customize Fractal Profile|多噪波效果|

## 常量类生成器-整体高度

![[Pasted image 20260415140825.png]]

![[Pasted image 20260415140838.png]]

|Height|整体高度|
|---|---|

## 常量类生成器-过渡

![[Pasted image 20260415140859.png]]

![[Pasted image 20260415140903.png]]

|Direction|过渡方向|
|---|---|
|Wigth|过渡间距|
|Tiling|过渡方式|

## 常量类生成器-形状

![[Pasted image 20260415140919.png]]

![[Pasted image 20260415140925.png]]

| Position | 形状位置 |
| -------- | ---- |
| Rotation | 形状旋转 |
| Width    | 过渡方式 |
| Type     | 形状类型 |

## 常量类生成器-变形

![[Pasted image 20260415140937.png]]

![[Pasted image 20260415140943.png]]

| Position          | 整体位置 |
| ----------------- | ---- |
| Rotation          | 整体旋转 |
| Feature Scale     | 变形密度 |
| Style             | 变形方式 |
| Crystallize       | none |
| Distance Function | 变形函数 |
| Random Seed       | 随机种子 |