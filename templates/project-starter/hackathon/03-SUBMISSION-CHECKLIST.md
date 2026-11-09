# Submission Checklist — {{HACKATHON_NAME}}

> Go through this once on **day one** (rules + form) and again **6 hours before** the deadline.
> Judges usually spend 2–5 minutes per project. Many never run your code. They watch the video and read the README.

## 1. Rules and form

- [ ] Opened the real submission form and know every required field
- [ ] Deadline converted to IST, reminder set at deadline minus 3 hours
- [ ] All team members added on the platform (if team)
- [ ] Eligibility checked (age, student status, country)
- [ ] Pre-existing code and AI use declared, if the rules ask for it

## 2. The product

- [ ] Demo path works on the **deployed** link, in an incognito window
- [ ] Works on a phone screen (judges sometimes open links on mobile)
- [ ] **Cold start check:** link loads fast after 30+ minutes idle (free tiers often "sleep")
- [ ] Demo data is loaded — the app doesn't look empty on first open
- [ ] If login is needed: demo account in README, or a "try demo" button (best: no login at all)
- [ ] Errors show a friendly message, not a stack trace
- [ ] Works without your laptop running (no localhost, no ngrok)
- [ ] API credits and rate limits will last through **judging**, which can be days or weeks later
- [ ] LLM features: tested with weird input (empty, very long, other language, "ignore your instructions")

## 3. The repo

- [ ] Public (if required) and has a license (if required)
- [ ] **No secrets in the code or history** — search for `sk-`, `key`, `secret`, `token`, `password`
- [ ] `.env.example` lists every variable needed
- [ ] README filled in (see the root `README.md` template)
- [ ] Commit history shows real work during the event (small, regular commits)

## 4. The demo video

- [ ] Under the time limit (often 2–3 minutes). Check the rules.
- [ ] **First 15 seconds:** the problem and what your project is. Judges may stop watching after that.
- [ ] Shows the demo path working for real, not just slides
- [ ] Each judging criterion has a clear moment in the video
- [ ] Clear audio, readable text (zoom in), notifications turned off
- [ ] Uploaded as public or unlisted, link tested in incognito
- [ ] Left time for YouTube processing (HD can take a while)

**Video script outline:**
1. Problem — who hurts and why (15s)
2. One-line solution (5s)
3. Live demo of the demo path (60–90s)
4. How it works / tech, briefly (15–20s)
5. Impact and what's next (10s)

## 5. Live pitch (if there's live judging)

- [ ] 2-minute version and 30-second version practiced out loud
- [ ] Backup video ready in case the live demo fails
- [ ] Phone hotspot ready in case Wi-Fi dies
- [ ] Answers ready for: Why this problem? How is it different from X? What's next? What exactly is the AI doing? How would it scale?

## 6. Final submit

- [ ] **Submitted at deadline minus 2 hours** (portals often crash in the last hour). Edit later if allowed.
- [ ] Screenshot of the confirmation saved
- [ ] All links in the submission tested one last time

## After submitting

- [ ] Keep the deployed app running until results are announced
- [ ] Build-in-public post (check rules — some don't allow public posting during judging)
- [ ] Fill `04-RETRO.md` within 48 hours
