---
name: md-to-excel
description: 将当前回复的Markdown内容转换为指定用例格式的Excel文档，保存到本地并返回文件路径。
avatar: "📊"
author: system
version: 1.0
action_type: internal
action_function: ExportToExcel
---

# 生成Excel版本测试用例

当用户希望将当前的Markdown格式测试用例转换为Excel表格时，使用此技能。

## 使用场景
- 用户说"导出Excel"、"转成表格"、"生成测试用例Excel"等
- 用户需要将AI生成的测试用例以Excel格式保存

## 注意事项
- 会自动识别Markdown中的表格结构并转换为Excel格式
- 适合处理结构化的测试用例内容
- 生成的文件保存在本地导出目录

## Parameters

| 名称 | 类型 | 必填 | 描述 |
|------|------|------|------|
| fileName | string | false | 自定义文件名（不含扩展名），不填则自动生成 |
