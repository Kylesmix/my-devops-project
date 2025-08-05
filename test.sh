#!/bin/bash

echo "Current directory:"
pwd

echo "Files in current directory:"
ls -la

DIR="$(dirname "$0")"

bash ./app.sh | grep "App version"
