# How to use the role prompts

Six prompts, six jobs. They're not six agents — they're six "hats" one AI wears.

| # | Role | Use it when | Paste with it |
|---|---|---|---|
| 1 | Research Analyst | Hackathon just announced | `00-HACKATHON-INFO.md` (with raw rules) + your problem list |
| 2 | Product Architect | Idea is picked | `PROJECT-BRIEF.md` |
| 3 | Engineering Assistant | Building | `PROJECT-BRIEF.md` + the task |
| 4 | Design Critic | Demo path works | `PROJECT-BRIEF.md` + screenshots |
| 5 | QA Engineer | Before feature freeze | `PROJECT-BRIEF.md` + deployed link |
| 6 | Pitch Consultant | Last 15% of time | `PROJECT-BRIEF.md` + `03-SUBMISSION-CHECKLIST.md` |

## Three ways to use them

**In Claude Code (best while building):** the project's `CLAUDE.md` makes Claude read the brief automatically. Just say:
> Act as the QA engineer from `hackathon/prompts/5-qa-engineer.md`.

**In a Claude Project (best for research and pitch):** make one Project per hackathon. Add `PROJECT-BRIEF.md` and `00-HACKATHON-INFO.md` as project files. Then paste a role prompt into a new chat.

**In any chat:** paste the role prompt, then paste the brief below it.

## The one rule

Every role works from the same `PROJECT-BRIEF.md`. If a role suggests something that changes the plan and you agree, **update the brief first**. Otherwise the next role works from old information.
