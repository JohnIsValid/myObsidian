---
name: md-to-word
description: 将当前回复的Markdown内容转换为Word文档，保存到本地并返回文件路径。
avatar: "📄"
author: system
version: 1.0
action_type: internal
action_function: ExportToWord
---

# 导出Word文档

当用户希望将当前的Markdown回复内容导出为Word文档时，使用此技能。

## 使用场景
- 用户说"导出Word"、"保存为Word文档"、"转Word"等
- 用户需要将AI回复的内容保存为正式文档

## 注意事项
- 会自动将Markdown格式（标题、列表、代码块、表格等）转换为Word样式
- 生成的文件保存在本地导出目录

## Parameters

| 名称 | 类型 | 必填 | 描述 |
|------|------|------|------|
| fileName | string | false | 自定义文件名（不含扩展名），不填则自动生成 |
