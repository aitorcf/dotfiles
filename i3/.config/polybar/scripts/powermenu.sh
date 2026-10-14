#!/usr/bin/env bash
set -euo pipefail

lock="󰌾  Lock"
logout="󰍃  Logout"
suspend="󰤄  Suspend"
reboot="󰜉  Restart"
shutdown="󰐥  Power off"

choice=$(printf '%s\n' "$lock" "$logout" "$suspend" "$reboot" "$shutdown" \
  | rofi -dmenu -i -p "Power" -lines 5 -width 20) || exit 0

confirm() {
  [ "$(printf 'No\nYes\n' | rofi -dmenu -i -p "$1?")" = "Yes" ]
}

case "$choice" in
  "$lock")     i3lock ;;
  "$logout")   confirm "Logout"    && i3-msg exit ;;
  "$suspend")  systemctl suspend ;;
  "$reboot")   confirm "Restart"   && systemctl reboot ;;
  "$shutdown") confirm "Power off" && systemctl poweroff ;;
esac
