#!/usr/bin/env bash

# sketchybar --add item battery right \
#     --set battery update_freq=300 \
#         label=" $(ioreg -l | grep '\"CurrentCapacity\" =' | awk -F '=' '{print $2}')%" \
#         padding_right=20

sketchybar --add item battery right \
    --set battery \
    update_freq=20 \
    script="$PLUGIN_DIR/battery.sh"
