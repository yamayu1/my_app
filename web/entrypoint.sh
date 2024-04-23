#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /myapp/tmp/pids/server.pid

# Execute ./bin/dev script or any other command you want
./bin/dev

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"