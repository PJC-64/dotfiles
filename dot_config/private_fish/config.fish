# PJC - Personal Fish Configuration

# All Sessions

# Bugfix: Fix for fonts.fish.install redirect error
set -U fish_features no-stderr-nocaret

# Update the path - different on MacOS and Linux
if test "$OSTYPE" = "darwin21"
    # MacOS
    fish_add_path -pg /opt/homebrew/opt/coreutils/libexec/gnubin
    fish_add_path -pg /Users/paul/.local/bin
    [ -f /opt/homebrew/share/autojump/autojump.fish ]; and source /opt/homebrew/share/autojump/autojump.fish
else
    # Linux
    # ongoing: Add Linux/Ubuntu-specific paths
    fish_add_path -pg /home/linuxbrew/.linuxbrew/opt/coreutils/libexec/gnubin
    fish_add_path -pg /home/linuxbrew/.linuxbrew/opt/python@3.10/bin
    fish_add_path -pg /home/.local/share/bin
    fish_add_path -pg  /home/linuxbrew/.linuxbrew/bin
    fish_add_path -pg $HOME/.local/share/bin
    [ -f /home/linuxbrew/.linuxbrew/share/autojump/autojump.fish ]; and source /home/linuxbrew/.linuxbrew/share/autojump/autojump.fish
end

# Interactive-Only

if status is-interactive
    # Enable Glyphs
    set -g theme_powerline_fonts yes
    set -g theme_nerd_fonts yes
    set -g fish_prompt_pwd_dir_length 2

    # Enable 'fuck' for typos
    thefuck --alias | source

    # Aliases for ChezMoi
    alias cm chezmoi
    # Aliases for exa
    alias ll "exa --long --header --icons"
    alias lag "exa --long --all --header --icons --git"
    alias lg "exa --long --header --icons --git"
    alias la "exa --long --all --icons --header"
end
