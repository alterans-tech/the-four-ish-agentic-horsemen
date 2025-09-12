#!/bin/bash

# 🔥 START THE APOCALYPSE 🔥
# Script to unleash the Seven Seals agents upon ~/.claude/agents
# Run from the root of the seven-seals-development-framework project

set -e  # Exit on error

# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
CYAN='\033[0;36m'
MAGENTA='\033[0;35m'
NC='\033[0m' # No Color

# Target directory
TARGET_DIR="$HOME/.claude/agents"

# Source directories (relative to project root)
SEVEN_SEALS_DIR="./seven-seals-council"
SCROLL_BREAKERS_DIR="./scroll-breakers"

echo -e "${RED}═══════════════════════════════════════════════════════════${NC}"
echo -e "${YELLOW}      🔥 INITIATING THE APOCALYPSE PROTOCOL 🔥${NC}"
echo -e "${RED}═══════════════════════════════════════════════════════════${NC}"
echo ""

# Check if we're in the correct directory
if [ ! -d "$SEVEN_SEALS_DIR" ] || [ ! -d "$SCROLL_BREAKERS_DIR" ]; then
    echo -e "${RED}⚠️  Error: This script must be run from the project root directory.${NC}"
    echo -e "${RED}   Expected to find 'seven-seals-council' and 'scroll-breakers' directories.${NC}"
    exit 1
fi

# Create target directory if it doesn't exist
if [ ! -d "$TARGET_DIR" ]; then
    echo -e "${YELLOW}📁 Creating sanctuary: $TARGET_DIR${NC}"
    mkdir -p "$TARGET_DIR"
else
    echo -e "${CYAN}📁 Sanctuary exists: $TARGET_DIR${NC}"
fi

# Count total files to copy
SEVEN_SEALS_COUNT=$(find "$SEVEN_SEALS_DIR" -name "*.md" -type f | wc -l | tr -d ' ')
SCROLLBREAKERS_COUNT=$(find "$SCROLL_BREAKERS_DIR" -name "*.md" -type f | wc -l | tr -d ' ')
TOTAL_FILES=$((SEVEN_SEALS_COUNT + SCROLLBREAKERS_COUNT))

echo -e "${MAGENTA}📜 Found $SEVEN_SEALS_COUNT seals and $SCROLLBREAKERS_COUNT scroll-breakers${NC}"
echo -e "${MAGENTA}📜 Total: $TOTAL_FILES agents ready to be unleashed${NC}"
echo ""

# The Seven Seals + The Judgment
echo -e "${YELLOW}Breaking the seals...${NC}"
echo ""

# Copy Seven Seals agents with thematic messaging
for file in "$SEVEN_SEALS_DIR"/*.md; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        cp -f "$file" "$TARGET_DIR/"
        
        # Custom messages for each seal
        case "$filename" in
            *"the-lamb"*)
                echo -e "  ${CYAN}🐑 The Lamb takes the scroll...${NC} ✓ $filename"
                ;;
            *"white-horse"*)
                echo -e "  ${GREEN}🏹 First Seal: White Horse (UI/UX) conquers...${NC} ✓ $filename"
                ;;
            *"red-horse"*)
                echo -e "  ${RED}⚔️  Second Seal: Red Horse (Data) brings war...${NC} ✓ $filename"
                ;;
            *"black-horse"*)
                echo -e "  ${MAGENTA}⚖️  Third Seal: Black Horse (Frontend) weighs scarcity...${NC} ✓ $filename"
                ;;
            *"pale-horse"*)
                echo -e "  ${CYAN}💀 Fourth Seal: Pale Horse (Backend), Death follows...${NC} ✓ $filename"
                ;;
            *"martyrs"*)
                echo -e "  ${YELLOW}🕊️  Fifth Seal: Martyrs (AI/ML) cry 'How long?'...${NC} ✓ $filename"
                ;;
            *"cosmic-upheaval"*)
                echo -e "  ${RED}🌋 Sixth Seal: Cosmic Upheaval (Platform) shakes all...${NC} ✓ $filename"
                ;;
            *"silence"*)
                echo -e "  ${CYAN}🤫 Seventh Seal: Silence (QA) before judgment...${NC} ✓ $filename"
                ;;
            *"white-throne"*)
                echo -e "  ${YELLOW}⚖️  Great White Throne (TDA) renders final judgment...${NC} ✓ $filename"
                ;;
            *)
                echo -e "  ${GREEN}✓${NC} $filename"
                ;;
        esac
    fi
done

# Copy Scrollbreakers with simple messaging
echo ""
echo -e "${YELLOW}Unleashing the Scrollbreakers...${NC}"
echo ""

for file in "$SCROLL_BREAKERS_DIR"/*.md; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        cp -f "$file" "$TARGET_DIR/"
        echo -e "  ${GREEN}📜${NC} $filename"
    fi
done

# Count copied files
COPIED_FILES=$(ls -1 "$TARGET_DIR"/*.md 2>/dev/null | wc -l | tr -d ' ')

echo ""
echo -e "${RED}═══════════════════════════════════════════════════════════${NC}"
echo -e "${GREEN}✅ THE APOCALYPSE HAS BEGUN!${NC}"
echo -e "${YELLOW}   $COPIED_FILES seals have been unleashed to $TARGET_DIR${NC}"
echo -e "${CYAN}   The agents await your command in Claude...${NC}"
echo -e "${RED}═══════════════════════════════════════════════════════════${NC}"