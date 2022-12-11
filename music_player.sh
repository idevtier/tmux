#!/usr/bin/env bash

session_name="music"
window=${session_name}:0

tmux kill-session -t $session_name
tmux new -s $session_name -d
tmux send-keys -t music "python3 ~/.config/tmux/music_player_core.py" Enter
tmux switch -t $session_name

