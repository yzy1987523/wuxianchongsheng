# 《轮回：识灾》Godot UI Components V0.1

这是在 UI Asset Pack V0.1 基础上整理出的 Godot 4.x 可复用组件包。

## 组件
- `scenes/DialogueBox.tscn`
- `scenes/ChoiceButton.tscn`
- `scenes/ArchiveCard.tscn`
- `scenes/TimelineNode.tscn`
- `scenes/SystemToast.tscn`
- `scenes/DeathScreen.tscn`
- `theme/UITheme.tres`

## 使用方式
1. 将 `art/`、`scenes/`、`scripts/`、`theme/` 拷贝到你的 Godot 项目。
2. 在场景中直接实例化 `.tscn`。
3. 动态文本、轮回次数、线索内容、角色名称等由 Godot 控件负责。
4. `ChoiceButton.gd` 提供 `set_choice()` 和 `set_corrupted()` 基础接口。
5. 基准分辨率为 1920×1080。

## 注意
V0.1 的目标是把视觉资产转为可复用组件，而不是一次性完成完整游戏 UI。字体、完整 Theme、动画状态机、响应式布局和剧情数据绑定可以在 V0.2 继续统一。
