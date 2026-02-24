# Second Brain — Obsidian + Claude Code

A personal knowledge system combining Obsidian (your vault) with Claude Code (your AI assistant) and automation tools. The AI learns your vault structure, habits, and tools over time via persistent memory.

---

## Core Philosophy

- **Inbox first** — everything lands in `00 Inbox/`, nothing is lost
- **Numbered folders** — predictable structure, no decision fatigue
- **AI as co-pilot** — Claude Code knows your vault and works inside it
- **Tools live in the vault** — scripts, prompts, presets are versioned alongside your notes

---

## Folder Structure

```
vault/
├── 00-09 System/
│   ├── 00 Inbox/          ← everything lands here first
│   ├── 01 Meta/           ← schemas, templates, CLAUDE.md copy
│   ├── 05 Scripts-Python/ ← automation scripts + venv
│   └── 07 Scripts-Node/   ← CLI tools (images, APIs)
├── 10-19 Knowledge/       ← atomic notes, concepts, learnings
├── 20-29 Areas/           ← ongoing domains (work, health, finance…)
├── 30-39 Resources/       ← references, bookmarks, source material
├── 40-49 Archive/         ← done, inactive, old projects
└── 50-59 Journal/         ← daily / weekly entries
```

Ranges are intentional — add sub-folders (21, 22…) as needed. Never restructure entire ranges, only add within them.

---

## Setup — Step by Step

### 1. Create Obsidian Vault

1. Download [Obsidian](https://obsidian.md)
2. Create new vault pointing at this folder (or clone this repo first)
3. Install plugins: **Templater**, **Dataview**, **Calendar** (optional but useful)

### 2. Create Folder Structure

Run the setup script:

```bash
bash setup.sh
```

Or create folders manually following the structure above.

### 3. Install Claude Code

```bash
npm install -g @anthropic-ai/claude-code
```

Requires an [Anthropic API key](https://console.anthropic.com).

### 4. Configure Claude Code

Place `CLAUDE.md` in the vault root. Claude Code reads this file automatically on every session — it defines your vault rules, tools, and preferences.

Edit `CLAUDE.md` to match your setup:
- Set your vault path
- List your tools and their paths
- Define naming conventions and workflow rules

### 5. Set Up Memory

Claude Code stores persistent memory per project at:
```
~/.claude/projects/<project-path>/memory/MEMORY.md
```

Copy the `memory/MEMORY.md` template from this repo to that path. Update it as you add tools and establish patterns. The AI reads this at every session start.

### 6. Add Node.js Tools (optional)

For AI image generation, place CLI tools in `00-09 System/07 Scripts-Node/`:

```bash
cd "00-09 System/07 Scripts-Node/your-tool"
npm install
```

Document each tool in `CLAUDE.md` and `memory/MEMORY.md` so the AI knows how to use them.

### 7. Add Python Tools (optional)

Place scripts in `00-09 System/05 Scripts-Python/scripts/`:

```bash
cd "00-09 System/05 Scripts-Python"
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

### 8. Daily Workflow

1. **Open Claude Code** in your vault directory: `claude`
2. **Inbox** — process anything in `00 Inbox/` during weekly review
3. **Journal** — create daily note in `50-59 Journal/YYYY/`
4. **Ask the AI** to help draft notes, generate content, run scripts, find connections

---

## Extending the System

| What to add | Where |
|---|---|
| New CLI tool | `00-09 System/07 Scripts-Node/tool-name/` |
| New Python script | `00-09 System/05 Scripts-Python/scripts/` |
| Schemas / templates | `00-09 System/01 Meta/` |
| New knowledge area | Create `2X Area-Name/` under `20-29 Areas/` |
| Project | Create folder under the relevant area |

Every time you add a tool or establish a new pattern, update both `CLAUDE.md` and `memory/MEMORY.md`. This is what makes the AI increasingly useful over time.

---

## Key Files

| File | Purpose |
|---|---|
| `CLAUDE.md` | AI instructions — read every session |
| `memory/MEMORY.md` | AI persistent memory — patterns, tools, preferences |
| `setup.sh` | Creates folder structure |

---

## Environment Variables

Store API keys in `~/.zshrc` or `~/.bashrc`, never in the vault:

```bash
export ANTHROPIC_API_KEY="..."
export BFL_API_KEY="..."        # Black Forest Labs (image generation)
export OPENAI_API_KEY="..."     # OpenAI (if used)
```
