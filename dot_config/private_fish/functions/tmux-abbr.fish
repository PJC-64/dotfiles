<<<<<<< HEAD
=======
set -g __lewisacidic_fish_scripting_abbr_version 0.1.0

>>>>>>> 32932bc4af2655eebe80c411f718bdea70b1395a
abbr --add --global ta 'tmux attach -t'
abbr --add --global tad 'tmux attach -d -t'
abbr --add --global ts 'tmux new-session -s'
abbr --add --global tl 'tmux list-sessions'
abbr --add --global tksv 'tmux kill-server'
abbr --add --global tkss 'tmux kill-session -t'

<<<<<<< HEAD
=======
set -l name (basename (status -f) .fish){_uninstall}

function $name --on-event $name
  abbr -e ta 
  abbr -e tad 
  abbr -e ts
  abbr -e tl
  abbr -e tksv
  abbr -e tkss
end
>>>>>>> 32932bc4af2655eebe80c411f718bdea70b1395a
