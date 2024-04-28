#!/bin/bash
set -e  # Exit immediately if a command exits with a non-zero status.

# Update PATH to include the directory where pip is installed
export PATH="/python312/bin:$PATH"

# Ensure pip is available
command -v pip >/dev/null 2>&1 || {
    echo "pip is not installed. Installing pip..."
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
    python3 get-pip.py
}

# Navigate to the directory containing Django project files
cd /vercel/path0/project_crs_main  # Ensure this is the correct directory

# Install dependencies
pip install -r requirements.txt

# Run Django collectstatic
python3 manage.py collectstatic --noinput  # Ensure you're using the correct Python version
