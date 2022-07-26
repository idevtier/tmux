#!/usr/bin/env bash

cd $1
tmux neww bash -c "lazygit"
