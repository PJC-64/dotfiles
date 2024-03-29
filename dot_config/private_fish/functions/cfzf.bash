cfzf () {
  fzf_command=("fzf")
  if [ -n "$1" ]; then
    fzf_command=($fzf_command "--query=$1" "-1")
  fi

  file_path=$(chezmoi managed --include=files | ${fzf_command[@]})
  if [ -z "$file_path" ]; then
    >&2 echo "No file selected"
  else
    chezmoi edit --apply "$HOME/$file_path"
  fi
}
