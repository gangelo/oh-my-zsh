# Add tests and utilities to fix any aspects of your development environment that
# may get borked by things like running brew update && brew upgrade.

# Check Node.js version requirements; this may get out of sync whenever running `brew update`.
# TODO: Update EXPECTED_NODE_VERSION to whatever your application requires.
export EXPECTED_NODE_VERSION="v16.15.1"
function node_check {
  local version=`node -v`
  version=${version:-unset}
  if [[ $version != $EXPECTED_NODE_VERSION ]]; then
    message="$fg_bold[red]Attention: "
    message+="The current Node.js version (${version}) is out of sync with eSTAT's expected Node.js version ($EXPECTED_NODE_VERSION)! "
    message+="Run 'node_fix' to force homebrew to link to the expected eSTAT Node.js version."
    echo $message
  fi
}
node_check

# Force node to version 16 necessary for eSTAT - this needs to be run
# every time `brew update` is run.
alias node_fix='brew link --force --overwrite node@16'
