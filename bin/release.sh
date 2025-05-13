#!/bin/sh
# Exit if any command fails.
set -e

# Ask the user for the version number
read -p "Enter the version number to release (e.g. 1.2.3): " VERSION

# Show the release version and ask for confirmation.
echo "➤ Preparing release for $VERSION..."
read -p "Are you sure you want to release version $VERSION? (y/n) " -n 1 -r
echo ""

# Check all the .php files and update the version number.
echo "➤ Updating version number..."
find ./src -type f -name '*.php' -exec sed -i '' -E "s/(@version)[[:space:]]+[0-9.]+/\1 $VERSION/" {} \;
echo "✓ Version number updated!"

# create a github release
echo "➤ Creating GitHub release..."
git add .
git commit -m "Release v$VERSION"
git tag -a "v$VERSION" -m "Release v$VERSION"
git push origin master --tags
echo "✓ GitHub release created!"

