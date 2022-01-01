if test (uname) = Darwin
    # MacOS
    source /opt/homebrew/opt/fzf/shell/key-bindings.fish
else if test (uname) = Linux
    # Linux
    source /home/linuxbrew/.linuxbrew/opt/fzf/shell/key-bindings.fish
else
    echo "Unknown OS Version found"
end
