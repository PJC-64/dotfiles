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

# Interactive-Only settings

if status is-interactive
  
    # Enable Glyphs
    set -g theme_powerline_fonts yes
    set -g theme_nerd_fonts yes
    set -g fish_prompt_pwd_dir_length 2
    set -g EDITOR nvim

    # Chezmoi abbreviations
    abbr --add --global cm   "chezmoi"
    abbr --add --global cma  "chezmoi add"              # Add an existing file, directory, or symlink to the source state 
    abbr --add --global cmad "chezmoi add"              # Add an existing file, directory, or symlink to the source state (Alt abbr)
    abbr --add --global cmap "chezmoi apply --verbose"  # Update the destination directory to match the target state
    abbr --add --global cmar "chezmoi archive"          # Generate a tar archive of the target state
    abbr --add --global cmcd "chezmoi cd"               # Launch a new shell in the source directory
    abbr --add --global cmd  "chezmoi diff"             # Print the diff between the target state and the destination state
    abbr --add --global cmf  "chezmoi forget"           # Remove a target from the source state
    abbr --add --global cmm  "chezmoi merge"            # Perform a 3-way merge
    abbr --add --global cmma "chezmoi merge-all"        # Perform a 3-way merge for each modified file
    abbr --add --global cmrm "chezmoi remove"           # Remove a target from both the source state and the destination directory
    abbr --add --global cmst "chezmoi status"           # Show the satus of targets
    abbr --add --global cmug "chezmoi upgrade"          # Upgrade chezmoi to the latest released version
    abbr --add --global cmup "chezmoi update"           # Pull any changes from remote git and apply them
    
    # Exa abbreviations (Note: using typical ls abbreviations but using exa)
    abbr --add --global la   "exa --group-directories-first --long --all --icons --header"
    abbr --add --global lag  "exa --group-directories-first --long --all --header --icons --git"
    abbr --add --global lar  "exa --group-directories-first --long --all --icons --header --sort=modified"
    abbr --add --global larg "exa --group-directories-first --long --all --header --icons --sort=modified --git"
    abbr --add --global lg   "exa --group-directories-first --long --header --icons --git"
    abbr --add --global lgr  "exa --group-directories-first --long --header --icons --git --sort=modified"
    abbr --add --global ll   "exa --group-directories-first --long --header --icons"
    abbr --add --global llr  "exa --group-directories-first --long --header --icons --sort=modified"
 
  # TMUX abbreviations
  abbr --add --global ta   'tmux attach -t'
  abbr --add --global tad  'tmux attach -d -t'
  abbr --add --global ts   'tmux new-session -s'
  abbr --add --global tl   'tmux list-sessions'
  abbr --add --global tkss 'tmux kill-session -t'
  abbr --add --global tksv 'tmux kill-server'

end
