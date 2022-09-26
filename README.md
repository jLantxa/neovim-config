# Byobu 256 colour support

Add the following line in `.byobu/.tmux.conf`:

    set -ga terminal-overrides ",*256col*:Tc"
