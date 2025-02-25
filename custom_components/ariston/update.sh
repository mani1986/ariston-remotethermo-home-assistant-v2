#!/bin/sh

# Define paths
HA_CONFIG_PATH="/config"  # Adjust if needed
CUSTOM_COMPONENTS_PATH="$HA_CONFIG_PATH/custom_components"
REPO_URL="https://github.com/mani1986/ariston-remotethermo-home-assistant-v2.git"
TEMP_DIR="/tmp/ariston_update"

# Remove old component
rm -rf "$CUSTOM_COMPONENTS_PATH/ariston"

# Clone the latest version of the repository
git clone "$REPO_URL" "$TEMP_DIR"

# Copy the updated component
cp -r "$TEMP_DIR/custom_components/ariston" "$CUSTOM_COMPONENTS_PATH/"

# Clean up
rm -rf "$TEMP_DIR"