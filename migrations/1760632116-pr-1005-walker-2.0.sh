#!/bin/bash

echo "Migrate to Walker 2.0.0 (PR #1005)"

# Ensure we kill walker even if there's a restarting service running
kill -9 $(pgrep -x walker) 2>/dev/null || true

# Remove old walker-bin package if installed
omarchy-pkg-drop walker-bin walker-bin-debug 2>/dev/null || true

# Install new walker and elephant packages
omarchy-pkg-add elephant \
  elephant-calc \
  elephant-clipboard \
  elephant-bluetooth \
  elephant-desktopapplications \
  elephant-files \
  elephant-menus \
  elephant-providerlist \
  elephant-runner \
  elephant-symbols \
  elephant-unicode \
  elephant-websearch \
  elephant-todo \
  walker

# Refresh walker configuration
omarchy-refresh-walker

# Clean up old theme files if they exist
rm -rf ~/.config/walker/themes 2>/dev/null || true

echo "Walker 2.0.0 migration completed successfully!"
echo "Note: You may need to restart your session for all changes to take effect."
