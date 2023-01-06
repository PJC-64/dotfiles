# Shows notification on your device and watch with Secure ShellFish installed.
#
# This command sends encrypted data through push notifications such
# that it doesn't need to run from a Secure ShellFish terminal.
#
# put this file inside $HOME/.config/fish/functions

function notify
  if not set -q argv[1]
    echo 'Usage: notify [title] <body> ...'
  else
    set --local key a99d326cc28bca98b4a011d3826e5625d497f394529de35c461dcbca21262ace
    set --local user CX1kCX9LIWWRKqK6fqyk7p9EPtTVbia1bngeBf1D
    set --local iv ab5bbeb426015da7eedcee8bee3dffb7

    set plain "$(
      echo Secure ShellFish Notify 1.0
      for arg in $argv
        echo "$arg"
      end
    )"
    set --local base64 $(echo "$plain" | openssl enc -aes-256-cbc -base64 -K $key -iv $iv)
    curl -sS -X POST -H "Content-Type: text/plain" --data "$base64" "https://secureshellfish.app/push/?user=$user"

  end
end
