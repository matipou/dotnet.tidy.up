#!/bin/bash

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m'
BOLD='\033[1m'

SCRIPT_URL="https://raw.githubusercontent.com/matipou/dotnet.tidy.up/main/tools/dotnet-tidy-up"
BIN_DIR="$HOME/.local/bin"

echo "----------------------------------------------------------------"
echo "          .NET Tidy Up Tool - Installation"
echo "----------------------------------------------------------------"
echo ""

echo -e "${BLUE}[+]${NC} Creating $BIN_DIR directory..."
mkdir -p "$BIN_DIR"

echo -e "${BLUE}[+]${NC} Downloading tool..."
curl -fsSL "$SCRIPT_URL" -o "$BIN_DIR/dotnet-tidy-up"

echo -e "${BLUE}[+]${NC} Making tool executable..."
chmod +x "$BIN_DIR/dotnet-tidy-up"

echo ""
echo -e "${GREEN}[+]${NC} Installation completed!"
echo ""

if echo "$PATH" | grep -q "$BIN_DIR"; then
    echo -e "${GREEN}[+]${NC} $BIN_DIR is in your PATH"
    echo ""
    echo "You can now use:"
    echo -e "  ${BOLD}dotnet-tidy-up${NC}"
else
    echo -e "${YELLOW}[!]${NC} $BIN_DIR is NOT in your PATH"
    echo ""
    echo "Add this line to your ~/.zshrc or ~/.bashrc:"
    echo -e "  ${BOLD}export PATH=\"\$HOME/.local/bin:\$PATH\"${NC}"
    echo ""
    echo "Then reload your shell with:"
    echo "  source ~/.zshrc  # or source ~/.bashrc"
fi