# Live To 100

> 不要再有人猝死了！我们要活到100岁！

> 一个面向 OpenClaw 的长寿执行系统：风险评分 + 复杂提醒 + 营养缺口 + 周报/月报。

![version](https://img.shields.io/badge/version-v1.0.0-0f766e)
![skill](https://img.shields.io/badge/OpenClaw-skill-111827)
![output](https://img.shields.io/badge/output-Markdown-2563eb)

## 🔥 Highlight

- 闭环：基线采集 -> 12周计划 -> 定时提醒 -> 每日饮食 -> 周报/月报
- 双形态：聊天可用，脚本也可用（JSON in / Markdown out）
- 强执行：不是泛泛建议，而是可打卡、可复盘、可调整

## 💻 功能矩阵

| 模块 | 你会得到什么 |
| --- | --- |
| 长寿风险评分 | `0-100` 总分 + 分项风险 + 关键驱动因素 |
| 复杂提醒时间表 | 工作日/周末、固定时点、间隔提醒、静默时段 |
| 保健品安全检查 | 先做补剂风险检查，再给出：`可继续 / 需医生复核 / 暂不建议` |
| 自动周报/月报 | 执行率、趋势、阻碍、下阶段动作 |
| 每日营养分析 | 营养均衡评分、热量缺口状态、次日调整建议 |

## 🆚 Before / After（示例）

| 场景 | Before（无系统） | After（使用 live-to-100） |
| --- | --- | --- |
| 提醒执行 | 想起来才做，频率不稳定 | 按时段+间隔自动提醒，执行可追踪 |
| 饮食管理 | 只记“吃了啥”，难判断好坏 | 每日营养评分 + 热量缺口状态 + 次日调整建议 |
| 周期复盘 | 靠感觉，难发现趋势 | 自动周报/月报，看到风险分和行为趋势变化 |


## 🙏 如果对你有帮助

⭐ **Star 这个仓库**，能让我持续迭代：  
- 更强的飞书提醒链路  
- 更好看的可视化周报  
- 多语言与多平台导出

## 💨 1 分钟 Demo

```bash
cd "/path/to/live-to-100-skills"
bash demo/run_demo.sh
```

生成文件在 `demo/output/`：
- `health_report.md`
- `reminder_timetable.md`
- `nutrition_report.md`

## ⚙️ 在 OpenClaw 中安装

```bash
cp -R "/path/to/live-to-100" "/Users/<you>/.openclaw/workspace/skills/live-to-100"
openclaw skills info live-to-100
```

调用示例：

```text
用 $live-to-100 根据我的身体数据生成12周长寿计划，并按工作日/周末做复杂提醒时间表。
```

## 🔧 CLI 脚本入口

```bash
# 风险 + 周报/月报
python live-to-100/scripts/generate_health_reports.py --input xxx.json --output report.md

# 复杂提醒时间表
python live-to-100/scripts/generate_reminder_timetable.py --input schedule.json --output reminders.md

# 每日饮食营养分析
python live-to-100/scripts/analyze_daily_nutrition.py --input nutrition.json --output nutrition.md
```

## 👷 示例输入

- `live-to-100/references/health-report-sample.json`
- `live-to-100/references/reminder-schedule-sample.json`
- `live-to-100/references/nutrition-day-sample.json`

## ⚠️ 安全边界

本项目仅提供生活方式管理建议，不用于诊断或急症决策。
