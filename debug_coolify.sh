#!/bin/bash
source /home/rene/deployweb/.env
source /home/rene/deployweb/lib/coolify-api.sh

echo "Checking auth..."
check_coolify_auth
echo "Auth check result: $?"

echo "Getting project UUID..."
uuid=$(get_default_project_uuid)
echo "UUID: $uuid"

echo "Running create_coolify_app dry run (checking connectivity)..."
# Just invoke the function to see if it prints the start message
# create_coolify_app "test" "test/test" "static" "test"
