#!/usr/bin/env sh


sketchybar --add item calendarEvent right \
    --set calendarEvent update_freq=60 \
    label="$(icalbuddy -n -nc -b "" -iep "title" -po "title" -tf "%H:%M" -df "%Y-%m-%d" eventsToday | head -n 1)" \
    padding_right=20


sketchybar --add item calendarTime right \
    --set calendarTime update_freq=60 \
    label="$(icalbuddy -n -nc -b "" -iep "datetime" -po "datetime" -tf "%H:%M" -df "%Y-%m-%d" eventsToday | head -n 1)" \
    label.color=$GREEN \
    padding_right=20
