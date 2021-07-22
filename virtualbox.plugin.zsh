# This should be cloned to .oh-my-zsh/custom/plugins/virtualbox folder.

function virtualbox_vm_status {
    if [ -z "$(vboxmanage list runningvms)" ]; then
        local vbox_status="You have no VirtualBox VM(s) running at this time."
    else
        local vbox_status="$fg_bold[red]You have one or more VirtualBox VM(s) running at this time!$reset_color"
    fi
    echo $vbox_status
}
