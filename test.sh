#!/bin/bash

echo "Current directory:"
pwd

echo "Files in current directory:"
ls -la

DIR="$(dirname "$0")"

bash "$DIR/app.sh" | grep "App version"
