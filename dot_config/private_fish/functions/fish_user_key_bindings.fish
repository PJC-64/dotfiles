 # Set up any personal key-bindings here.
 # Currently, just calls out to fzf bindings using different paths for
 # Mac & Linux.

 # FZF Key Bindings

if test (uname) = Darwin
    # MacOS
    source /opt/homebrew/opt/fzf/shell/key-bindings.fish
else if test (uname) = Linux
    # Linux
    source /home/linuxbrew/.linuxbrew/opt/fzf/shell/key-bindings.fish
else
    echo "Unknown OS Version found"
end
