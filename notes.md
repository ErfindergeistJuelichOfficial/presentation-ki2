Good instinct to filter — here's what's workshop-safe and actually demonstrates something, roughly ordered by demo value:

Your own StoryTelling app — seriously, lead with it. A self-built AI Dungeon clone is a far better workshop artifact than any product demo, and your debug panel is the killer feature for teaching: it shows exactly how a prompt gets assembled from system prompt + scenario + character + world cards + summary + player intent. That's the thing most AI workshops fail to make tangible. Live-play two turns, then open the debug panel and show what was actually sent to the model.

Ollama (ollama.com) — "run an LLM on your own laptop in one command." Always lands well, kills the "AI = cloud subscription" assumption, and you can demo it with your existing setup. Pair it with the model size discussion (1B vs 8B quality difference is visible live).

AI Dungeon (aidungeon.com) — the historical reference point, free browser demo, instantly understood by non-technical attendees. Good for the "this started in 2019 with GPT-2" story arc.

Character.AI (character.ai) — the mainstream giant, heavily filtered so completely safe to show, and most younger attendees already know it. Useful for the "AI companions are a mass phenomenon" data point rather than as a tool.

AI Horde (aihorde.net) — crowdsourced volunteer GPU network providing free inference. Conceptually charming ("SETI@home for AI"), good for a slide even if you don't demo it.

OpenRouter (openrouter.ai) — one API for 300+ models with transparent per-token pricing. The pricing page itself is a great workshop slide: it demystifies "what does AI actually cost" (your 15-turn game: a twentieth of a cent).

KoboldCpp — mention for the technical crowd: single executable, runs GGUF models locally with a built-in story UI. The lighter-weight cousin of Ollama.

Skip or handle with care: SillyTavern is open source and impressive, but its community and default character ecosystem skew adult — fine to name in a tooling overview, risky to live-demo unprepared. NovelAI is polished but markets itself on being unfiltered. Chub.ai, JanitorAI, SpicyChat — leave out entirely.

If the workshop has a hands-on part: Ollama + your app is a self-contained, offline-capable, completely safe package — attendees could play your fantasy scenario against a 1B model on modest hardware.