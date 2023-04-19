#!/bin/bash
python scripts/check_requirements.py requirements.txt
if [ $? -eq 1 ]
then
    echo Installing missing packages...
    pip install -r requirements.txt
fi
python3.11 -m autogpt $@
read -p "Press any key to continue..."
