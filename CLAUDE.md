# CLAUDE.md — Second Brain Assistant

## Vault

- **Root:** `/path/to/your/vault` ← update this
- Work exclusively inside this directory
- Never modify files outside the vault unless explicitly asked

## Folder Conventions

```
00-09 System/00 Inbox/     ← drop zone for all new content
00-09 System/01 Meta/      ← schemas, templates
00-09 System/05 Scripts-Python/
00-09 System/07 Scripts-Node/
10-19 Knowledge/           ← atomic notes
20-29 Areas/               ← ongoing domains
30-39 Resources/           ← references
40-49 Archive/             ← inactive
50-59 Journal/             ← daily / weekly
```

## Note Naming

- Use kebab-case for file names: `my-note-title.md`
- Dates in ISO format: `2026-02-24`
- Journal entries: `YYYY/YYYY-MM-DD.md`

## Tools

Document your tools here as you add them. Example format:

### Example Tool (Node.js)
- Path: `00-09 System/07 Scripts-Node/tool-name/`
- Run: `node cli.js <command> "argument" [options]`
- Output: `00-09 System/00 Inbox/tool-name/`
- Requires: `TOOL_API_KEY` env var

### Example Script (Python)
- Path: `00-09 System/05 Scripts-Python/scripts/script-name.py`
- Run: `source venv/bin/activate && python scripts/script-name.py`

## Workflow Rules

- **Always read a file before editing it**
- **New content → Inbox first**, never directly to final location
- **After generating any file** (image, audio, etc.) — open it: `open "<path>"`
- When unsure where something belongs, ask rather than guess
- Prefer editing existing files over creating new ones

## Memory

Persistent memory is stored at:
`~/.claude/projects/<encoded-vault-path>/memory/MEMORY.md`

Update it when:
- A new tool is added
- A new pattern is established
- A preference is confirmed across multiple sessions
