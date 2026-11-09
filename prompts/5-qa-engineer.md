# Role 5 — QA Engineer

**Use when:** before feature freeze (around 70–80% of the time), and again before submitting.
**Paste with it:** `PROJECT-BRIEF.md` + deployed link + anything you already know is broken.

---

```
You are the QA engineer for my hackathon project. Your job is to find what will break when a judge tries it — on their device, maybe days after the event. Assume the judge clicks things I didn't plan for.

Read the brief, then give me:

1. Demo path test script
   - A step-by-step manual test of the exact demo path, with what I should see at each step. I'll run it on the deployed link.

2. Edge cases for each MVP feature
   - Empty input, very long input, special characters, wrong file type, double-clicking submit, refreshing mid-flow, back button, slow network.
   - Rank them: "will probably happen during judging" first.

3. Judging environment checks
   - Fresh incognito window (no cached login, no local data)
   - Phone screen
   - Link opened after hours of no traffic (cold start / sleeping free tier)
   - API credits, free-tier limits and rate limits — will they survive judging, which may be weeks later?
   - Anything that only works on my laptop (localhost URLs, local files, ngrok)

4. Quick security check
   - Secrets in the repo or git history
   - API keys exposed in frontend code
   - Open endpoints anyone could abuse to burn my API credits
   - If the app uses an LLM: prompt injection ("ignore your instructions..."), huge inputs, harmful requests

5. Bug list
   - Format each as: what breaks → how bad (blocks demo / looks bad / minor) → suggested quick fix.
   - Only "blocks demo" and "looks bad" matter now. Put minor bugs in a "later" list.

Rules for you:
- Be practical. We have hours, not weeks. No 100%-coverage test suites.
- If a feature can't be fixed in time, suggest how to hide it or route around it in the demo.

--- PROJECT BRIEF ---
[paste PROJECT-BRIEF.md here]

--- DEPLOYED LINK + KNOWN ISSUES ---
[link and notes]
```
