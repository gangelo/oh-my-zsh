
#
# Aliases for Time Machine local snapshots.
alias tms='tmutil listlocalsnapshots /'
alias tmd='tmutil deletelocalsnapshots $1'

#
# Shell/system

# Turns horizontal scroll on/off for iTerm2
alias hscroll-on='tput rmam'
alias hscoll-off='tput smam'

# Lists only locally-mounted filesystems. To run the shell df
# use:
#
# command df <options>
alias df='df -Hl'

# Alias prep for running Zeus locally
alias zr='zeus_reset_and_up.sh'

#
# Git aliases

# View remote tracking branch
alias grb='git status -sb'

#
# Rails-related

# Run all specs
alias zzrspec='RAILS_ENV=test rspec spec'

# Returns the process of the rails server (rails s)
alias zzrsp='lsof -i :3000 -t'

# Kills the rails server (rails s) process
alias zzrsk='kill -9 $(zzrsp)'