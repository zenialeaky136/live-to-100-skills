#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SKILL_DIR="$ROOT_DIR/live-to-100"
OUT_DIR="$ROOT_DIR/demo/output"

mkdir -p "$OUT_DIR"

python3 "$SKILL_DIR/scripts/generate_health_reports.py" \
  --input "$SKILL_DIR/references/health-report-sample.json" \
  --output "$OUT_DIR/health_report.md"

python3 "$SKILL_DIR/scripts/generate_reminder_timetable.py" \
  --input "$SKILL_DIR/references/reminder-schedule-sample.json" \
  --output "$OUT_DIR/reminder_timetable.md"

python3 "$SKILL_DIR/scripts/analyze_daily_nutrition.py" \
  --input "$SKILL_DIR/references/nutrition-day-sample.json" \
  --output "$OUT_DIR/nutrition_report.md"

echo "Demo outputs generated:"
echo "  - $OUT_DIR/health_report.md"
echo "  - $OUT_DIR/reminder_timetable.md"
echo "  - $OUT_DIR/nutrition_report.md"
