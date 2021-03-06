#!/usr/bin/env bash

# Signal trapping.

handle_term()
{
   echo ""
   echo "hello-world.sh exiting."
   exit 0
}

trap 'handle_term' TERM

# =============================================================================
# Main
# =============================================================================

echo "Hello world at" $(date)

# Sleep cycle in a manner that allows "docker stop ..." to shutdown gracefully.

while sleep ${SENZING_SLEEP_TIME:-600};
  do
    echo "Hello world at" $(date)
  done &

wait
