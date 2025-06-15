#!/bin/zsh

# Colors
BOLD="\033[1m"
YELLOW="\033[1;33m"
GREEN="\033[1;32m"
WHITE="\033[1;37m"
RESET="\033[0m"

TITLE="$*"
[[ -z "$TITLE" ]] && TITLE="Untitled Video"

# Typewriter effect without sound
typewriter() {
  local text="$1"
  local delay="${2:-0.05}"
  for (( i=0; i<${#text}; i++ )); do
    printf "%s" "${text:$i:1}"
    sleep "$delay"
  done
  printf "\n"
}

clear
echo -en "${BOLD}"
typewriter "Welcome."
echo -en "${RESET}"
sleep 1

echo -en "${YELLOW}"
typewriter "$TITLE"
echo -en "${RESET}"
sleep 1.2

# Loading bar
BAR_LENGTH=10
for i in $(seq 1 $BAR_LENGTH); do
  FILLED=$(printf "%${i}s" | tr ' ' '█')
  EMPTY=$(printf "%$((BAR_LENGTH - i))s" | tr ' ' ' ')
  PERCENT=$((i * 100 / BAR_LENGTH))

  printf "\r[${GREEN}${FILLED}${WHITE}${EMPTY}${RESET}] ${PERCENT}%%"
  sleep 0.066
done

# printf "\n\n"
sleep 3
