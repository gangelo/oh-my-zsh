function create_card_folder {
  local year=$(date +'%Y')

  # TODO: Replace path to meet your needs.
  local card_folder="/Users/$(whoami)/OneDrive - USCIS/Documents/tickets/${year}/$1"

  #local card_folder="$HOME/Documents/tickets/${year}/$1"
  if [ -z "$1" ]; then
    echo "$fg_bold[red]No folder specified!$reset_color"
    return 1
  else
    mkdir -p "$card_folder"
  fi

  touch "$card_folder/scratch.rb"
  touch "$card_folder/readme.txt"

  echo "Created: $card_folder"

  return 0
}
alias ccf=create_card_folder
