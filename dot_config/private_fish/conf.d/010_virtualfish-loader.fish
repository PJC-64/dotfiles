set -g VIRTUALFISH_VERSION 2.5.3
if test uname = Darwin
    set -g VIRTUALFISH_PYTHON_EXEC /opt/homebrew/opt/python@3.9/bin/python3.9
    source /opt/homebrew/lib/python3.9/site-packages/virtualfish/virtual.fish
else if test uname = Linux
    set -g VIRTUALFISH_PYTHON_EXEC /home/linuxbrew/.linuxbrew/opt/python@3.10/bin/python3
    source /home/linuxbrew/.linuxbrew/lib/python3.10/site-packages/virtualfish/virtual.fish
end
emit virtualfish_did_setup_plugins
