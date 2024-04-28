#!/bin/bash
set -e  # Exit immediately if a command exits with a non-zero status.

# Setup virtual environment using Python 3.12
python3.12 -m venv venv
source venv/bin/activate

# Update PATH to include the directory where pip is installed (inside the virtual environment)
export PATH="/python312/bin:$PATH"

# Navigate to the directory containing Django project files
cd /vercel/path0/project_crs_main  # Ensure this is the correct directory

# Install dependencies from requirements.txt
pip install -r requirements.txt

# Run Django collectstatic
python3.12 manage.py collectstatic --noinput  # Using Python 3.12 explicitly
