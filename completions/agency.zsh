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

alias ap="agency portal"
alias ape="agency portal edit"

# Sharepoint
alias sharepoint="$BROWSER 'http://sharepoint3'"

# Timeforce
alias timeforce="$BROWSER 'http://bend.quantumclub.com/qqest/Login/login.asp'"
alias timeforcepunch="$BROWSER http://bend.quantumclub.com/qqest/time/timeCard.asp && $BROWSER 'http://bend.quantumclub.com/qqest/Time/timePunch.asp?punchtype=clockinout&ActiveEmployeeID=57'"

# Zendesk
alias zendesk="$BROWSER 'https://agencyrevolution.zendesk.com/agent'"
alias knowledgebase="$BROWSER 'https://agencyrevolution.zendesk.com/forums'"

# DNN directories
alias revportals="cd /Volumes/Resources/production/Portals"
alias devportals="cd /Volumes/Resources/development"

alias revcomponents="cd /Volumes/Resources/production/Resources/Shared/components"

alias revskins="cd /Volumes/Resources/production/Portals/_default/Skins"
alias devskins="cd /Volumes/Resources/development/_default/Skins"

alias revmodules="cd /Volumes/Resources/production/DesktopModules"

# Docs directory
alias revdocs="cd /Volumes/Resources/docs"

# Convert Wordpress to SunBlogNuke
alias wpmigrate="mono ~/bin/WPBlogML.exe "
