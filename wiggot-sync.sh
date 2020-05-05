#!/bin/bash
DOMAIN="wiggot.xyz"
SYNC_PATH="/home/ubuntu"

while getopts "s:d:p:" OPTION; do
  case $OPTION in
  s) SUBDOMAIN="$OPTARG" ;;
  d) DOMAIN="$OPTARG" ;;
  p) SYNC_PATH="$OPTARG" ;;
  *)
    echo "Usage: sync [OPTIONS]" >&2
    exit 2
    ;;
  esac
done

if [ -z "$SUBDOMAIN" ]; then
  echo "You have to choose a subdomain using the \`-s\` parameter"
  exit 2
fi

URL="$SUBDOMAIN.$DOMAIN"

rsync -rav --exclude "config.yaml" --exclude "application.log" --exclude "*.DS_Store*" --exclude "node_modules" --exclude "app.id" --exclude "app.log" --exclude "*.env*" --exclude ".git" --exclude "sync.sh" --exclude "photos" --exclude "properties" --exclude "cache" --delete "$PWD" "ubuntu@$URL:$SYNC_PATH"
