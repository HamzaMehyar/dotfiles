#!/bin/bash
default_sink=$( pacmd stat | grep "Default sink" | awk '{print substr($4,0) " "}' )

current_volume_pc=$(pactl list sinks | grep '^[[:space:]]Volume:' | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,')

  echo "+$2%"
if [ $1 == "+" ] && [ $current_volume_pc -lt  100 ]; then
  pactl set-sink-volume $default_sink "+$2%"
fi

if [ $1 == "s" ]; then
  pactl set-sink-volume $default_sink "$2%"
fi

if [ $1 == "-" ]; then
  pactl set-sink-volume $default_sink "-$2%"
fi
