# Project context for AI assistants

This is a hackathon project with a hard deadline. Speed and a working demo matter more than perfect code.

## Before doing anything

1. Read `hackathon/PROJECT-BRIEF.md`. It is the source of truth for the idea, MVP, demo path, tech stack and decisions.
2. Read the "Rules that change how I build" section of `hackathon/00-HACKATHON-INFO.md`.
3. Check **Current phase** at the top of the brief.

## Rules

- **Stay inside the MVP.** Don't add features that aren't in "MVP features". If you have a good idea, suggest it and I'll decide whether it goes in the cut list.
- **Don't change the tech stack** without asking. If you think a choice is wrong, say so once with a reason, then follow the brief.
- **Protect the demo path.** If a change could break any step of it, warn me before making it.
- **Log decisions.** When we decide something important, add a row to the Decisions log in the brief.
- **No secrets in code.** Use `.env`, keep `.env.example` updated, never commit keys.
- **Simple over clever.** Prefer boring, working code. Hardcoding or mock data is fine for the demo if it's noted honestly in the README.
- **Phase matters.** If the phase is "Feature freeze" or "Submitting", only fix bugs and polish. No new features.
- **Stuck rule.** If something has taken more than 30 minutes, suggest a simpler approach or a way to fake it for the demo.

## Roles

Role prompts live in `hackathon/prompts/`. When I say "act as the QA engineer" (or any role), read that file and follow it.
