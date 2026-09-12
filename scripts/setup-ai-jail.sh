#!/usr/bin/env bash
set -euo pipefail

cat > ~/.ai-jail << 'EOF'
no_save_config = true
network = true
private_home = true
terminal_passthrough = true

ro_maps = [
  "~/.local/share/nvim/mason",
]

# Global rw_maps for ease of use.
# Could split up in [command.<command>] blocks if needed.
rw_maps = [
  "~/g/allow",
  "~/g/ask",
  "~/.config/mise",
  "~/.local/share/mise",
  "~/.local/share/rx/dotfiles/agents:~/.agents",
  "~/.local/share/rx/agents/opencode:~/.config/opencode",
  "~/.local/share/rx/agents/pi:~/.pi",
  "~/.local/share/opencode",
  "~/.local/state/opencode/model.json",
  "~/.local/share/rx/agents/config/sandbox/AGENTS.md:~/.config/opencode/AGENTS.md",
  "~/.local/share/rx/agents/config/sandbox/AGENTS.md:~/.pi/agent/AGENTS.md",
]
EOF
