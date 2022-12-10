#!/usr/bin/env bash

cd $1
tmux neww -n 'lazygit' bash -c "lazygit"
