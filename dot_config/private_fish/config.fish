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
    fish_add_path -pg /opt/homebrew/opt/python@3.10/bin
    fish_add_path -pg /opt/homebrew/bin
    fish_add_path -pg /opt/homebrew/opt/ruby/bin
    fish_add_path -pg /opt/homebrew/lib/ruby/gems/3.0.0/bin
    set -g BYOBU_PREFIX /opt/homebrew
    source /opt/homebrew/share/autojump/autojump.fish
else if test (uname) = Linux
    # Linux
    # todo: Add any other Linux/Ubuntu-specific paths
    fish_add_path -pg /home/linuxbrew/.linuxbrew/opt/coreutils/libexec/gnubin
    fish_add_path -pg /home/linuxbrew/.linuxbrew/opt/python@3.10/bin
    fish_add_path -pg /home/linuxbrew/.linuxbrew/bin
    fish_add_path -pg /home/linuxbrew/.linuxbrew/opt/ruby/bin
    fish_add_path -pg /home/linuxbrew/.linuxbrew/lib/ruby/gems/3.0.0/bin
    source /home/linuxbrew/.linuxbrew/share/autojump/autojump.fish
else
    # Something else
    echo "Unknown OS found!!"
end

# Interactive-Only

if status is-interactive
  
    # Enable Glyphs
    set -g theme_powerline_fonts yes
    set -g theme_nerd_fonts yes
    set -g fish_prompt_pwd_dir_length 2
    set -g EDITOR nvim

    # Chezmoi aabbriations
    abbr --add --global cm chezmoi
    
    # Exa abbriaations
    abbr --add --global la "exa --long --all --icons --header"
    abbr --add --global lag "exa --long --all --header --icons --git"
    abbr --add --global lar "exa --long --all --icons --header --sort=modified"
<<<<<<< HEAD
    abbr --add --global larg "exa --long --all --header --icons --sort=modified --git"
=======
<<<<<<< HEAD
    abbr --add --global larg "exa --long --all --header --icons --sort=modified --git"
=======
    abbr --add --global larg "exa --long --all --header --icons --git"
>>>>>>> 628a97cc2a07301e992dfc4e6dd52ad2f4aa9083
>>>>>>> fa34d3e828ac6963a045e2801befefe74e890dad
    abbr --add --global lg "exa --long --header --icons --git"
    abbr --add --global lgr "exa --long --header --icons --git --sort=modified"
    abbr --add --global ll "exa --long --header --icons"
    abbr --add --global llr "exa --long --header --icons --sort=modified"
 
end
