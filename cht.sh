#!/usr/bin/env bash

languages=`echo "js python java rust bash" | tr ' ' '\n'`

selected=`printf "$languages" | fzf`
read -p "query: " query

query=`echo $query | tr ' ' '+'`
tmux neww bash -c "curl cht.sh/$selected/$query | batcat"
