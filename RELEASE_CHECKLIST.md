# Release Checklist

## Product

- Confirm skill description is clear and trigger-friendly in `SKILL.md`.
- Verify all scripts run from a clean environment.
- Verify safety wording is present (non-diagnostic guidance).

## Demo

- Run `bash demo/run_demo.sh`.
- Confirm outputs exist in `demo/output/`.
- Spot-check markdown readability and structure.

## OpenClaw Integration

- Install to `~/.openclaw/workspace/skills/live-to-100`.
- Verify with `openclaw skills info live-to-100`.
- Run one real prompt via `$live-to-100`.

## Cron/Delivery (if reminders are scheduled)

- Ensure every Feishu cron job has `delivery.to`.
- Verify one reminder with near-term trigger.
- Check run logs for delivery errors.

## Repo Quality

- Update `README.md` usage and demo section.
- Update `CHANGELOG.md` with current release notes.
- Tag release version and publish.
