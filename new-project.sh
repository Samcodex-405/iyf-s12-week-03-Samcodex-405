#!/bin/bash

# ==========================================
# Project Setup Automation Script
# IYF WeCan Academy - Season 12
# ==========================================

# Get the project name from the first argument
PROJECT_NAME=$1

# Check whether a project name was provided
if [ -z "$PROJECT_NAME" ]; then
    echo "Error: Project name is required."
    echo "Usage: bash new-project.sh project-name"
    exit 1
fi

# Check whether the project already exists
if [ -e "$PROJECT_NAME" ]; then
    echo "Error: A file or folder with this name already exists."
    exit 1
fi

# Create the project directory structure
mkdir -p "$PROJECT_NAME"/{src/{css,js,images},docs,tests}

# Create project files
touch "$PROJECT_NAME/README.md"
touch "$PROJECT_NAME/src/index.html"
touch "$PROJECT_NAME/src/css/styles.css"
touch "$PROJECT_NAME/src/js/main.js"

# Add a project title to README.md
echo "# $PROJECT_NAME" > "$PROJECT_NAME/README.md"

# Display success message
echo "=========================================="
echo "Project created successfully!"
echo "Project name: $PROJECT_NAME"
echo "=========================================="

# Display the created structure
find "$PROJECT_NAME" -print