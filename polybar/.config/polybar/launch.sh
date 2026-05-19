#!/bin/bash

# Kill any running polybar instances
killall -q polybar

# Wait until they're really gone
while pgrep -x polybar >dev/null; do sleep 1; done

# Launch the bar
polybar example &
