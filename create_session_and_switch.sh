#!/bin/env bash
read -p "Enter new session name: " session_name
tmux new -s $session_name -d
tmux switch -t $session_name
