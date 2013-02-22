if [[ ! -o interactive ]]; then
    return
fi

compctl -K _agency agency

_agency() {
  local word words completions
  read -cA words
  word="${words[2]}"

  if [ "${#words}" -eq 2 ]; then
    completions="$(agency commands)"
  else
    completions="$(agency completions "${word}")"
  fi

  reply=("${(ps:\n:)completions}")
}

# Sharepoint
alias sharepoint="$BROWSER 'http://sharepoint3'"

# Timeforce
alias timeforce="$BROWSER 'http://bend.quantumclub.com/qqest/Login/login.asp'"
alias timeforcepunch="$BROWSER http://bend.quantumclub.com/qqest/time/timeCard.asp && $BROWSER 'http://bend.quantumclub.com/qqest/Time/timePunch.asp?punchtype=clockinout&ActiveEmployeeID=57'"

# Zendesk
alias zendesk="$BROWSER 'https://agencyrevolution.zendesk.com/agent'"
alias knowledgebase="$BROWSER 'https://agencyrevolution.zendesk.com/forums'"

# Common directories
alias portals="cd ~/Shares/AR-Clients/Portals && ls"
alias assets="cd ~/Shares/AR-Clients/Portals/_assets && ls"
alias skins="cd ~/Shares/AR-Clients/Portals/_default/Skins && ls"
alias modules="cd ~/Shares/AR-Clients/DesktopModules && ls"
alias remotegems="cd ~/Shares/Ruby/lib/ruby/gems/1.9.1/gems && ls"
alias qdrive="cd ~/Shares/Groups && ls"

# Skins
for skin in susy echo; do
  alias $skin="skins && $EDITOR $skin"
done
