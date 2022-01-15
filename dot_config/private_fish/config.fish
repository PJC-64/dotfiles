# PJC - Personal Fish Configuration

# All Sessions

# Bugfix: Fix for fonts.fish.install redirect error
set -U fish_features no-stderr-nocaret

# Common paths for Linux/MacOS
fish_add_path -pg $HOME/.cargo/bin
fish_add_path -pg $HOME/.local/bin
fish_add_path -pg $HOME/.local/share/bin

# Different paths for MacOS and Linux
if test (uname) = Darwin
    # MacOS
    fish_add_path -pg /opt/homebrew/opt/coreutils/libexec/gnubin
    [ -f /opt/homebrew/share/autojump/autojump.fish ]; and source /opt/homebrew/share/autojump/autojump.fish
else if test (uname) = Linux
    # Linux
    # todo: Add any other Linux/Ubuntu-specific paths
    fish_add_path -pg /home/linuxbrew/.linuxbrew/opt/coreutils/libexec/gnubin
    fish_add_path -pg /home/linuxbrew/.linuxbrew/opt/python@3.10/bin
    fish_add_path -pg /home/linuxbrew/.linuxbrew/bin
    [ -f /home/linuxbrew/.linuxbrew/share/autojump/autojump.fish ]; and source /home/linuxbrew/.linuxbrew/share/autojump/autojump.fish
else
    # Something else
    echo "Unknown OS found!!"
end

# Interactive-Only

if status is-interactive
  
    # Enable Glyphs
    set -pg theme_powerline_fonts yes
    set -pg theme_nerd_fonts yes
    set -pg fish_prompt_pwd_dir_length 2
    set -pg EDITOR nvim

    # Enable 'fuck' for typos
    thefuck --alias | source

    # Aliases for ChezMoi
    alias cm chezmoi
    
    # Aliases for exa

    alias la "exa --long --all --icons --header"
    alias lag "exa --long --all --header --icons --git"
    alias lar "exa --long --all --icons --header --sort=modified"
    alias larg "exa --long --all --header --icons --git"
    alias lg "exa --long --header --icons --git"
    alias lgr "exa --long --header --icons --git --sort=modified"
    alias ll "exa --long --header --icons"
    alias llr "exa --long --header --icons --sort=modified"
 
end
