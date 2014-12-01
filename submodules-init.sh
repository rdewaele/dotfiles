#!/bin/sh

# also see
# http://stackoverflow.com/questions/1777854/git-submodules-specify-a-branch-tag
# (answer by VonC)

git submodule update --init

git submodule foreach -q --recursive 'branch="$(git config -f $toplevel/.gitmodules submodule.$name.branch)"; git checkout $branch'

# ignore local changes as these files will contain sensitive information
git update-index --assume-unchanged git/gitconfig.symlink
