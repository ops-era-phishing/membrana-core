#!/data/data/com.termux/files/usr/bin/bash

clear

# ─────────────────────────────────────────────
# KENECO // TERMINAL PROFILE
# ─────────────────────────────────────────────

RESET="\033[0m"
BOLD="\033[1m"
DIM="\033[2m"
CYAN="\033[36m"
GREEN="\033[32m"
MAGENTA="\033[35m"
WHITE="\033[97m"
YELLOW="\033[33m"

echo -e "${CYAN}"
cat <<'EOF'

██╗  ██╗███████╗███╗   ██╗███████╗ ██████╗
██║ ██╔╝██╔════╝████╗  ██║██╔════╝██╔════╝
█████╔╝ █████╗  ██╔██╗ ██║█████╗  ██║     
██╔═██╗ ██╔══╝  ██║╚██╗██║██╔══╝  ██║     
██║  ██╗███████╗██║ ╚████║███████╗╚██████╗
╚═╝  ╚═╝╚══════╝╚═╝  ╚═══╝╚══════╝ ╚═════╝

EOF
echo -e "${RESET}"

echo -e "${DIM}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"
echo -e "${BOLD}${MAGENTA}        K E N E C O   //   T E R M I N A L${RESET}"
echo -e "${DIM}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"
echo

# Data
USER_NAME="$(whoami)"
HOST="$(hostname)"
KERNEL="$(uname -r)"
ARCH="$(uname -m)"
UPTIME="$(uptime -p 2>/dev/null || echo "unknown")"
DATE="$(date '+%d/%m/%Y %H:%M:%S')"

# Bateria
if command -v termux-battery-status >/dev/null 2>&1; then
    BATTERY="$(termux-battery-status 2>/dev/null | grep -o '"percentage": [0-9]*' | grep -o '[0-9]*')"
    [ -z "$BATTERY" ] && BATTERY="?"
else
    BATTERY="N/A"
fi

echo -e "${GREEN}┌─[ SYSTEM ]─────────────────────────────────┐${RESET}"
echo -e "${GREEN}│${RESET} User      : ${WHITE}${USER_NAME}${RESET}"
echo -e "${GREEN}│${RESET} Device    : ${WHITE}${HOST}${RESET}"
echo -e "${GREEN}│${RESET} Arch      : ${WHITE}${ARCH}${RESET}"
echo -e "${GREEN}│${RESET} Kernel    : ${WHITE}${KERNEL}${RESET}"
echo -e "${GREEN}│${RESET} Uptime    : ${WHITE}${UPTIME}${RESET}"
echo -e "${GREEN}│${RESET} Battery   : ${YELLOW}${BATTERY}%${RESET}"
echo -e "${GREEN}│${RESET} Date      : ${WHITE}${DATE}${RESET}"
echo -e "${GREEN}└────────────────────────────────────────────┘${RESET}"

echo

# Imagem opcional
IMAGE="$HOME/keneco.png"

if command -v chafa >/dev/null 2>&1 && [ -f "$IMAGE" ]; then
    echo -e "${CYAN}┌─[ KENECO ]─────────────────────────────────┐${RESET}"
    chafa --format symbols --size 32x16 "$IMAGE"
    echo -e "${CYAN}└────────────────────────────────────────────┘${RESET}"
else
    echo -e "${MAGENTA}"
    cat <<'EOF'
              .──────────────.
             /   K E N E C O  \
            |      ◉  ◉       |
            |        ▽         |
             \    ───────    /
              '──────────────'
                   /|
              ____/ |
             /      |
            /_______|

          [ image not installed ]
EOF
    echo -e "${RESET}"
fi

echo
echo -e "${DIM}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"
echo -e "${CYAN}  status:${RESET} ${GREEN}ONLINE${RESET}   ${DIM}//${RESET}   ${CYAN}shell:${RESET} bash"
echo -e "${DIM}  "Terminal pessoal de Keneco" ${RESET}"
echo -e "${DIM}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${RESET}"
echo
