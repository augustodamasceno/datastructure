#!/bin/bash
############################################
# This script is part of the datastructure project.
# Installer
# Copyright (c) 2024, Augusto Damasceno.
# All rights reserved.  
# SPDX-License-Identifier: BSD-2-Clause
############################################

if ! command -v python3 &> /dev/null
then
    echo "Python3 could not be found. Please install Python3."
    exit 1
fi

python3 -m venv venv

if [ -f "venv/bin/activate" ]; then
    source venv/bin/activate
else
    echo "Failed to create virtual environment."
    exit 1
fi

pip install -r requirements.txt
echo "Virtual environment setup complete and dependencies installed."