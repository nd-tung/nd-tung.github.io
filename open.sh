#!/bin/bash

# Portfolio Website Opener
echo "Opening portfolio website..."

# Try different browsers in order of preference
if command -v open >/dev/null 2>&1; then
    # Try Chrome first
    if open -a "Google Chrome" index.html 2>/dev/null; then
        echo "Opened in Google Chrome"
    # Try Safari if Chrome is not available
    elif open -a "Safari" index.html 2>/dev/null; then
        echo "Opened in Safari"
    # Try Firefox as fallback
    elif open -a "Firefox" index.html 2>/dev/null; then
        echo "Opened in Firefox"
    else
        echo "No supported browser found. Please manually open index.html in your web browser."
    fi
else
    echo "Please manually open index.html in your web browser."
fi
