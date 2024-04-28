#!/bin/bash
set -e  # Exit immediately if a command exits with a non-zero status.

# Ensure pip is available
command -v pip >/dev/null 2>&1 || {
    echo "pip is not installed. Installing pip..."
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
    python3 get-pip.py  # Adjust based on what version of Python is available
}

# Navigate to the directory containing Django project files
cd /vercel/path0/project_crs_main  # Update this path to the correct folder where `manage.py` and `requirements.txt` are located

# Install dependencies
pip install -r requirements.txt

# Run Django collectstatic
python3 manage.py collectstatic --noinput  # Adjust the python command as necessary
