#import "@preview/touying:0.7.1": *
#import themes.metropolis: *

#show: metropolis-theme.with(
  config-info(
    title: [AI and `oi-tools`],
    author: [Alistair Pattison],
    date: [OI Predoc Reading Group — April 15, 2026],
  ),
)

// TODO: make the header bar taller
#set text(font: "Comic Sans MS")
#show link: set text(fill: blue)

#title-slide()

//
#let title = "AI and `oi-tools`"

== Outline

- Talking (config, guardrails, workflows)
- AI coding demo!
- `oi-tools` demo!
- Call for input!

// == Does NOT remove the need for critical thinking
//
// - it's true that these things can be very impressive on their own
// - "english is the hottest new programming language" - karpathy
// - llms are a fallable english -> code compiler?
// - two probs: there's no isomorphism, and requires complete specification
// - programming skills and AI agents are incredibly complementary goods (maybe cope)

== Config

- Global instructions
  - User level: `~/.claude/CLAUDE.md` / `~/.codex/AGENTS.md` (e.g. #link("https://github.com/alipatti/dotfiles/blob/main/claude/CLAUDE.md")[mine])
  - Project-level: `./{CLAUDE,AGENTS}.md` (e.g. #link("https://github.com/OpportunityInsights/oi-tools/blob/main/CLAUDE.md")[oi-tools])
  - Be opinionated!
- Sync config between Claude and Codex (e.g. `ln -s CLAUDE.md AGENTS.md`)
- Global settings: `~/.claude/settings.json` (e.g. #link("https://github.com/alipatti/dotfiles/blob/main/claude/settings.json")[mine])
- Extract common tasks into skills (`~/{.claude,.codex}/skills`)
  // TODO: link to mine
  - E.g. reviewing code, fixing TODO items (#link("https://github.com/alipatti/dotfiles/blob/main/skills")[mine])

== Guardrails

Three facts:

- AI is stochastic.
- AI makes mistakes.
- Humans are lazy.

Many "old-school" software tools can greatly reduce the impact of both these things.

- Those that make it harder for Claude to break things.
  - Sandboxing, git

- Those that provide guarantees about output.
  - Linters (`ruff`), type checking (`pyright`), unit tests (`pytest`)
  - These checks can and should be automated! Claude can help set it up!

== Workflows

#text(red)[*PLEASE, ALWAYS, ALWAYS, START WITH A CLEAN WORKING TREE!!!!*]

"Hands off":
- Give prompt, allow edits, step away, check diff.
- For when you know exactly what you want to do, but Claude is faster.
- "Plan mode" is useful.

"Pair programming"
- Trade off typing with claude, edit its code.
- Scaffold high-level steps in (pseudo) code, then tell Claude to go complete them.
- Claude/Codex can see what you've selected in the editor.

"XX mode"
- Leave notes for the AI to fix (Raj simulator).

