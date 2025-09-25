#!/bin/bash
set -x

SCREEN_NAME="DisplayPort-0"

xrandr --output $SCREEN_NAME --off

sleep 1

xrandr --output $SCREEN_NAME --auto

autorandr --change work
