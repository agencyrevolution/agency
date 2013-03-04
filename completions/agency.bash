_agency() {
  COMPREPLY=()
  local word="${COMP_WORDS[COMP_CWORD]}"

  if [ "$COMP_CWORD" -eq 1 ]; then
    COMPREPLY=( $(compgen -W "$(agency commands)" -- "$word") )
  else
    local command="${COMP_WORDS[1]}"
    local completions="$(agency completions "$command")"
    COMPREPLY=( $(compgen -W "$completions" -- "$word") )
  fi
}

complete -F _agency agency

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
for skin in susy echoframework; do
  alias $skin="skins && $EDITOR $skin"
done

# Convert Wordpress to SunBlogNuke
alias wpmigrate="mono ~/bin/WPBlogML.exe "
