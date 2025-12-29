#!/bin/sh

# Terminate existing polybar instances
killall -q polybar

# Wait until processes shut down
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

# Launch polybar on all monitors (or just "main" for single)
polybar main &

echo "Polybar launched"
