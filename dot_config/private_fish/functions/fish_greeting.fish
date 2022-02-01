# Defined in /var/folders/2p/q9dqtwkj4tdckk24qvby52700000gn/T//fish.vYg7w4/fish_greeting.fish @ line 2
function fish_greeting --description What\'s\ up,\ fish\?
    dura serve > /dev/null 2>&1 &
    disown %1
    if test "$TERM_PROGRAM" != "tmux"; command neofetch; end
    set_color $fish_color_param
    command uname -nmsr
    command -q -s uptime >/dev/null
      and command uptime
    set_color normal
end
