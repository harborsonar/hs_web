#!/bin/bash

# Commit message as an input
read -r -p "Enter commit message: " commit_message

# Add all changes
echo "Staging all changes..."
if ! git add .; then
  echo "Failed to stage changes. Exiting."
  exit 1
fi

# Commit the changes
echo "Committing changes with message: $commit_message"
if ! git commit -m "$commit_message"; then
  echo "Failed to commit changes. Exiting."
  exit 1
fi

# Push changes to the main branch
echo "Pushing to 'main' branch..."
if ! git push origin main; then
  echo "Failed to push changes. Exiting."
  exit 1
fi

echo "All steps completed successfully!"
