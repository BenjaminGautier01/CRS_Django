#!/bin/bash
# Ensure pip is available
command -v pip >/dev/null 2>&1 || {
    echo "pip is not installed. Installing pip..."
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
    python3.9 get-pip.py
}

# Install dependencies
pip install -r requirements.txt

# Run Django collectstatic
python3.9 manage.py collectstatic --noinput  # Adding --noinput to avoid any prompts
