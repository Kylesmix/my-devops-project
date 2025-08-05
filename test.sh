#!/bin/bash

DIR="$(dirname "$0")"
"$DIR"/app.sh | grep "App version"
