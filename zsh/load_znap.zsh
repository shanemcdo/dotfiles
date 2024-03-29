# Mostly taken from: https://github.com/marlonrichert/zsh-snap#dotfiles-usage
# Download Znap, if it's not there yet.
[[ -f ~/Git/zsh-snap/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git ~/Git/zsh-snap

. ~/Git/zsh-snap/znap.zsh  # Start Znap
# `znap source` automatically downloads and starts your plugins.
# This plugin makes ^R different and arguably worse
znap source marlonrichert/zsh-autocomplete # potentially causes lag; before commenting out run `znap pull` It could fix the problem
znap source zsh-users/zsh-autosuggestions
znap source zsh-users/zsh-syntax-highlighting
# `znap eval` caches and runs any kind of command output for you.
znap eval iterm2 'curl -fsSL https://iterm2.com/shell_integration/zsh'
