if [[ ! -o interactive ]]; then
    return
fi

compctl -K _rev rev

_rev() {
  local word words completions
  read -cA words
  word="${words[2]}"

  if [ "${#words}" -eq 2 ]; then
    completions="$(rev commands)"
  else
    completions="$(rev completions "${word}")"
  fi

  reply=("${(ps:\n:)completions}")
}
