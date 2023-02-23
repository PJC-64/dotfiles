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
    set -g BYOBU_PREFIX /opt/homebrew
else if test (uname) = Linux
    # Linux
    set -g BYOBU_PREFIX /home/linuxbrew/.linuxbrew
else
    # Something else
    echo "Unknown OS found!!"
end

fish_add_path -pg $BYOBU_PREFIX/bin
fish_add_path -pg $BYOBU_PREFIX/sbin
fish_add_path -pg $BYOBU_PREFIX/opt/coreutils/libexec/gnubin
fish_add_path -pg $BYOBU_PREFIX/opt/python@3.10/bin
fish_add_path -pg $BYOBU_PREFIX/lib/python@3.10/site-packages
fish_add_path -pg $BYOBU_PREFIX/opt/ruby/bin
fish_add_path -pg $BYOBU_PREFIX/lib/ruby/gems/3.0.0/bin
fish_add_path -pg $BYOBU_PREFIX/lib/ruby/gems/3.1.0/bin

# Interactive-Only settings

if status is-interactive
    
    # Enable Glyphs
    set -g theme_powerline_fonts yes
    set -g theme_nerd_fonts yes
    set -g fish_prompt_pwd_dir_length 2
    set -g EDITOR nvr

    # Set nvim listen address
    set -g NVIM_LISTEN_ADDRESS /tmp/nvimsocket

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
    
    # EXA abbreviations
    abbr --add --global ls    "exa --icons"
    abbr --add --global la    "exa  --icons --all"
    abbr --add --global lag   "exa --icons --all --git"
    abbr --add --global ll    "exa --icons --long --header"
    abbr --add --global llg   "exa --icons --long --git --header --group-directories-first --sort date"
    abbr --add --global lla   "exa --icons --long --all --header --group-directories-first --sort date"
    abbr --add --global llag  "exa --icons --long --all --git --header --group-directories-first --sort date"
 
    # Brew/Homebrew abbreviations
    abbr --add --global ,bic  'brew install --cask '
    abbr --add --global ,bls  'brew list'
    abbr --add --global ,bs   'brew search'
    abbr --add --global ,bu   'brew uninstall'
    abbr --add --global ,bug  'brew update && brew upgrade'

    # Zellij abbreviations
    abbr --add --global ,z   'zellij'
    abbr --add --global ,za  'zellij attach'
    abbr --add --global ,zl  'zellij -l Athena-lvim'
    abbr --add --global ,zn  'zellij -l Athena-nvim'
    abbr --add --global ,zls 'zellij list-sessions'

    # Import external commands

    thefuck --alias | source
    zoxide init fish | source
    eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib=$HOME/perl5)"
    source $BYOBU_PREFIX/opt/asdf/libexec/asdf.fish

  # Aliases
  alias j z

  # ITERM2 integration
  test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

end

