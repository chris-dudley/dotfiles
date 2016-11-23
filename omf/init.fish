# Set SSH to use gpg-agent
set --erase SSH_AGENT_PID
set --export SSH_AUTH_SOCK "$XDG_RUNTIME_DIR/gnupg/S.gpg-agent.ssh"

# Set GPG tty
set --export GPG_TTY (tty)

# Refresh gpg-agent tty in case user switches into an X session
gpg-connect-agent updatestartuptty /bye >/dev/null
