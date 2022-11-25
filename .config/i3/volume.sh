default_sink=$( pacmd stat | grep "Default sink" | awk '{print substr($4,0) " "}' )

pactl set-sink-volume $default_sink $1
