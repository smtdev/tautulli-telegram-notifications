#!/bin/bash

# Template validation script
# Checks all templates for common issues

echo "🔍 Validating Tautulli Telegram notification templates..."

TEMPLATES_DIR="templates"
ERRORS=0

# Check for missing pairs (es/en)
echo "📋 Checking for missing language pairs..."
for file in $TEMPLATES_DIR/es/*-es; do
    basename=$(basename "$file" -es)
    en_file="$TEMPLATES_DIR/en/${basename}-en"
    if [ ! -f "$en_file" ]; then
        echo "❌ Missing English template: $en_file"
        ERRORS=$((ERRORS + 1))
    fi
done

for file in $TEMPLATES_DIR/en/*-en; do
    basename=$(basename "$file" -en)
    es_file="$TEMPLATES_DIR/es/${basename}-es"
    if [ ! -f "$es_file" ]; then
        echo "❌ Missing Spanish template: $es_file"
        ERRORS=$((ERRORS + 1))
    fi
done

# Check for common syntax issues
echo "🔧 Checking template syntax..."
find $TEMPLATES_DIR -name "*.es" -o -name "*.en" | while read template; do
    # Check for unclosed HTML tags
    if grep -q "<b>[^<]*</i>\|<i>[^<]*</b>" "$template"; then
        echo "❌ Mismatched HTML tags in: $template"
        ERRORS=$((ERRORS + 1))
    fi
    
    # Check for malformed Tautulli variables
    if grep -q "{[^}]*{}\|{}[^{]*}" "$template"; then
        echo "❌ Malformed variables in: $template"
        ERRORS=$((ERRORS + 1))
    fi
done

if [ $ERRORS -eq 0 ]; then
    echo "✅ All templates validated successfully!"
else
    echo "❌ Found $ERRORS issues"
    exit 1
fi
