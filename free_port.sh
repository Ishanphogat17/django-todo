#!/bin/bash

PORT=8000

# Check if the port is in use
if lsof -i:$PORT; then
  echo "Port $PORT is in use. Freeing it..."
  PID=$(lsof -t -i:$PORT)
  kill -9 $PID
  echo "Port $PORT is now free."
else
  echo "Port $PORT is not in use."
fi
