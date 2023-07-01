#!/bin/bash

# Array of Git repository URLs
repos=(
  "https://github.com/Mahesh95802/frontend"
  "https://github.com/Mahesh95802/backend"
  "https://github.com/Mahesh95802/auth-service"
)

# Directory where repositories will be cloned
clone_dir="../test"

# Clone repositories
for repo_url in "${repos[@]}"; do
  # Extract repository name from URL
  repo_name=$(basename "${repo_url%.git}")

  # Construct clone path
  clone_path="$clone_dir/$repo_name"

  # Clone repository
  git clone "$repo_url" "$clone_path"

  # Check if clone was successful
  if [ $? -eq 0 ]; then
    echo "Repository '$repo_name' cloned successfully."
  else
    echo "Failed to clone repository '$repo_name'."
  fi
done
