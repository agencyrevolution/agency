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

alias a="agency"
alias ap="agency portal"
alias ape="agency portal edit"
alias gtfo="agency disconnect && airport on"

# Sharepoint
alias sharepoint="$BROWSER 'http://sharepoint3'"

# Timeforce
alias timeforce="$BROWSER 'http://bend.quantumclub.com/qqest/Login/login.asp'"
alias timeforcepunch="$BROWSER http://bend.quantumclub.com/qqest/time/timeCard.asp && $BROWSER 'http://bend.quantumclub.com/qqest/Time/timePunch.asp?punchtype=clockinout&ActiveEmployeeID=57'"

# Zendesk
alias zendesk="$BROWSER 'https://agencyrevolution.zendesk.com/agent'"
alias knowledgebase="$BROWSER 'https://agencyrevolution.zendesk.com/forums'"

# Common directories
alias portals="cd /shares/AR-Clients/Portals"
alias assets="cd /shares/AR-Clients/Portals/_assets"
alias skins="cd /shares/AR-Clients/Portals/_default/Skins"
alias modules="cd /shares/AR-Clients/DesktopModules"
alias remotegems="cd /shares/Ruby/lib/ruby/gems/1.9.1/gems"
alias qdrive="cd /shares/Groups"

# Skins
for skin in susy echoframework; do
  alias $skin="skins && $EDITOR $skin"
done

# Convert Wordpress to SunBlogNuke
alias wpmigrate="mono ~/bin/WPBlogML.exe "
