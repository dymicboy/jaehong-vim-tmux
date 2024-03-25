#!/bin/bash

# Shows pid of a process that has a given port open
lsof_port(){ sudo lsof -i :"$1"; }

# Shows list of files that contain a given string
af(){ ag -g "$1";}

# Shows list of branches sorted by committer date
alias git_branch="git branch --sort=-committerdate"

# Refreshes the bashrc file
rebash(){
    source ~/.bashrc
}
