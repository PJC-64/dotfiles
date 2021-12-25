# PJC - Personal Fish Configuration

# All Sessions

# Bugfix: Fix for fonts.fish.install redirect error
set -U fish_features no-stderr-nocaret

# Update the path - different on MacOS and Linux
if test "$OSTYPE" = "darwin21"
    # MacOS
    fish_add_path -pg /opt/homebrew/opt/coreutils/libexec/gnubin
    fish_add_path -pg /Users/paul/.local/bin
else
    # Linux
    # TODO: Add Linux/Ubuntu-specific paths
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
    alias ll "exa --long --icons --header"
    alias lg "exa --long --icons --header --git"
    alias la "exa --long --icons --all --header"
    alias lag "exa --long --icons --all --header --git"

# Enable autojump (j) to allow faster commonly-used folder access
    [ -f /opt/homebrew/share/autojump/autojump.fish ]; and source /opt/homebrew/share/autojump/autojump.fish

# Force fish to start-up in my homedir

cd $HOME

end
