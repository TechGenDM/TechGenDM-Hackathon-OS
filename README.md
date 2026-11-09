# TechGenDM Hackathon OS — V1

> A reusable kit to go from **"hackathon announced"** to **"submitted"** faster, with fewer silly mistakes.

It's not an app. It's templates, six AI role prompts, checklists, and a results log. Think of it as a packed kit bag: you grab it and walk onto the field ready.

---

## What's inside

```
TechGenDM-Hackathon-OS/
├── README.md               ← you are here
├── new-hackathon.sh        ← creates a new hackathon project in one command
├── RESULTS-LOG.md          ← one line per hackathon, forever
├── prompts/                ← six AI roles (+ how to use them)
├── templates/
│   └── project-starter/    ← copied for every new hackathon
│       ├── CLAUDE.md       ← makes Claude Code read your brief automatically
│       ├── README.md       ← submission-ready README template
│       ├── .gitignore, .env.example
│       └── hackathon/
│           ├── 00-HACKATHON-INFO.md       ← rules, deadline in IST, prizes, credits
│           ├── 01-IDEAS.md                ← real problems → ideas → 3 gates → pick
│           ├── PROJECT-BRIEF.md           ← the single source of truth
│           ├── 02-PLAN.md                 ← checkpoints, tasks, cut list, sleep
│           ├── 03-SUBMISSION-CHECKLIST.md ← every edge case before you submit
│           └── 04-RETRO.md                ← what to keep / fix next time
└── hackathons/             ← your hackathon projects land here (git-ignored)
```

---

## How to use it

### 1. Start a new hackathon (1 minute)

```bash
./new-hackathon.sh "Devfolio AI Build 2026"
```

This creates `hackathons/devfolio-ai-build-2026/` with everything filled in and ready. Want it somewhere else? Add a path:

```bash
./new-hackathon.sh "Devfolio AI Build 2026" ~/Projects/my-hack
```

Each hackathon folder becomes its **own repo** (that's what you'll submit). Run `git init` inside it.

### 2. Fill `00-HACKATHON-INFO.md` (15 minutes)

Paste the rules. Convert the deadline to IST. Open the real submission form and note every field. Claim free credits now.

### 3. Research + ideas (≈ 5% of total time)

Start with **real problems you've seen**, then use `prompts/1-research-analyst.md`. Run ideas through the three gates in `01-IDEAS.md`. Pick one.

### 4. Lock the brief

Fill `PROJECT-BRIEF.md`. This is the most important file. Every AI role reads it.

### 5. Plan (≈ 5% of time)

Use `prompts/2-product-architect.md`, then fill `02-PLAN.md`. Write your checkpoint times in IST.

### 6. Build

Open the folder in Claude Code. Because of `CLAUDE.md`, it reads your brief automatically. Use **Hack Day Starter** for boilerplate *only if the rules allow pre-written code*.

### 7. Test, polish, submit

QA Engineer → Design Critic → Pitch Consultant. Go through `03-SUBMISSION-CHECKLIST.md`. Submit **2 hours early**.

### 8. Retro (within 48 hours)

Fill `04-RETRO.md`. Add one line to `RESULTS-LOG.md`. Make one improvement to this kit.

---

## Time budget

Use percentages so it works for any length — 24 hours or one month.

| Phase | % of time | 24h | 36h | 48h | 1 week |
|---|---|---|---|---|---|
| Info + research | 5% | 1h | 2h | 2.5h | 8h |
| Ideas + brief | 5% | 1h | 2h | 2.5h | 8h |
| Plan | 5% | 1h | 2h | 2.5h | 8h |
| Build | 60% | 14.5h | 21.5h | 29h | 4 days |
| Test + fix | 10% | 2.5h | 3.5h | 5h | 17h |
| Video + README + submit | 15% | 3.5h | 5.5h | 7h | 1 day |

Build time includes sleep for 24h+ events. Don't skip sleep — cut scope instead.

---

## Golden rules

1. **Real problem > AI-suggested idea.** Everyone asks the same AI for ideas.
2. **Read the rules on AI use and pre-written code before writing any code.**
3. **Deploy by the halfway mark.** Not at the end.
4. **Feature freeze at 80%.** After that, only fixes and polish.
5. **Protect the demo path.** It's what judges actually see.
6. **The brief is the truth.** Changed your mind? Update the brief first.
7. **Submit 2 hours early.** Then edit if allowed.
8. **Always do the retro.** It's how this kit gets smarter.

---

## Roadmap

- **V1 (this):** templates + prompts + checklists. Use it for 2–3 hackathons.
- **V2 (maybe):** only if, after 3 hackathons, you keep repeating the same steps by hand. Build only what the retros say is painful.
- **V3:** probably not needed. Picking a winning idea needs your judgment, not a pipeline.

---

Built by [TechGenDM](https://github.com/TechGenDM) — *I was built to build.*
