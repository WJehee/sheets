default:
    @just --list

# Open the dungeon time tracker (printed many times)
dungeon:
    xdg-open dungeon-tracker.html

# Open the season sheet (one page = 3 months)
season:
    xdg-open season-sheet.html

# Open the character sheet
character:
    xdg-open character-sheet.html

# Render a sheet to a print-ready PDF, e.g. `just pdf dungeon-tracker`
pdf name:
    chromium --headless --no-pdf-header-footer \
        --print-to-pdf={{name}}.pdf \
        "file://$(pwd)/{{name}}.html"

# Serve the folder locally on http://localhost:8000
serve:
    python3 -m http.server 8000
