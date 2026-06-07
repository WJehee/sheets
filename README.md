# Sheets

Printable RPG sheets, written as self-contained HTML and printed straight from
the browser. Each sheet is A4 (landscape unless noted) and draws its own
diagrams in inline SVG, so there is nothing to build.

## The sheets

### Player

- **character-sheet.html** Character record: info (name, ancestry, background,
  sign, languages, portrait), attributes, armour and movement, equipped gear,
  inventory and coin.

### Running the game

- **overland-sheet.html** Overland travel. The 6-watch day and its day clock,
  terrain pace (watch-cost to enter a hex), camp actions (rest, watch, craft,
  cook, forage, entertain) and the fatigue die that governs how far a party can
  push.
- **dungeon-gm-sheet.html** Dungeon crawling. The 10-minute turn and the forms
  of time, the turn-by-turn crawl procedure, what a turn buys, light and
  darkness, and wandering monsters.
- **hex-flower-sheet.html** The hex flower engine. The 2d6 navigation hex for
  moving through a flower, plus the optional secondary structures (collar,
  lobes, central hex, starting hex).

### Trackers

- **dungeon-tracker.html** A tally grid for counting turns spent underground.
  Print many copies.
- **season-sheet.html** A season at a glance: three months of days with daily
  moon phases and the day clock.
- **unseason-sheet.html** A short, multi-week season tracker with moon phases, a
  blank weather hex flower (filled by the GM, navigated with 2d6) and a 2d6
  random-encounter table.

## Using them

Common commands live in the `justfile`:

- `just` lists every recipe.
- `just all` opens every sheet in the browser.
- `just overland` (and `character`, `dungeongm`, `hexflower`, `dungeon`,
  `season`, `unseason`) opens a single sheet.
- `just pdf overland-sheet` renders a sheet to a print-ready PDF.
- `just serve` serves the folder on http://localhost:8000.

A Nix flake is provided for a reproducible shell with `just`, a browser and the
PDF tooling on hand.
