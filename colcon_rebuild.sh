#!/bin/bash

# Check if project name is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 project_name"
    exit 1
fi

PROJECT_NAME=$1

# Navigate to the workspace directory (assuming the script is run from the workspace directory)
# cd /path/to/your/workspace  # Uncomment and set the path if necessary

# Delete the specified build and install directories
rm -rf build/$PROJECT_NAME install/$PROJECT_NAME

# Run colcon build for the specified project
colcon build --packages-select $PROJECT_NAME
