# PJC - Personal Fish Configuration

# All Sessions

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
    alias ll "exa --long --header"
    alias lg "exa --long --header --git"
    alias la "exa --long --all --header"
    alias lag "exa --long --all --header --git"
    cd $HOME
end

