default:
    @just --list

# Open every sheet in the browser
all:
    for f in *.html; do xdg-open "$f"; done

# Open the dungeon time tracker (printed many times)
dungeon:
    xdg-open dungeon-tracker.html

# Open the season sheet (one page = 3 months)
season:
    xdg-open season-sheet.html

# Open the unseason sheet (3-week tracker, weather hex flower, 2d6 encounters)
unseason:
    xdg-open unseason-sheet.html

# Open the character sheet
character:
    xdg-open character-sheet.html

# Open the overland sheet (travel & watches, camping & rest)
overland:
    xdg-open overland-sheet.html

# Open the hex flower sheet (hex flower engine, secondary structures)
hexflower:
    xdg-open hex-flower-sheet.html

# Open the dungeon GM sheet (dungeon turn, crawl procedure, light)
dungeongm:
    xdg-open dungeon-gm-sheet.html

# Render a sheet to a print-ready PDF, e.g. `just pdf dungeon-tracker`
pdf name:
    chromium --headless --no-pdf-header-footer \
        --print-to-pdf={{name}}.pdf \
        "file://$(pwd)/{{name}}.html"

# Serve the folder locally on http://localhost:8000
serve:
    python3 -m http.server 8000
