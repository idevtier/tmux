#!/usr/bin/env bash

languages=`echo "javascript nodejs python" | tr ' ' '\n'`
core_utils=`echo "awk find mv tar" | tr ' ' '\n'`

selected=`printf "$languages\n$core_utils" | fzf`
read -p "query: " query


if printf $languages | grep -qs $selected; then
    query=`echo $query | tr ' ' '+'`
    echo "lang: $selected"
    echo "cht.sh/$selected/$query"
    tmux neww bash -c "curl cht.sh/$selected/$query & while :; do sleep 1; done"
else
    # tmux neww bash -c curl curl cht.sh/$selected~$query & while :; do sleep 1; done`
    tmux neww bash -c "curl cht.sh/$selected~$query & while [:]; do sleep 1; done"
fi
