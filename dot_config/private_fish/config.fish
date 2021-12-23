# PJC - Personal Fish Configuration

# All Sessions

# Update the path
fish_add_path -pg /opt/homebrew/opt/coreutils/libexec/gnubin
fish_add_path -pg /Users/paul/.local/bin

# Interactive-Only

if status is-interactive

    # Enable Glyphs
    set -g theme_powerline_fonts yes
    set -g theme_nerd_fonts yes

    # Enable 'fuck' for typos
    thefuck --alias | source

# Enable autojump (j) to allow faster commonly-used folder access
    [ -f /opt/homebrew/share/autojump/autojump.fish ]; and source /opt/homebrew/share/autojump/autojump.fish

end

