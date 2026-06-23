#!/bin/bash


session="hashed2test"

tmux has-session -t hashed2test 2>/dev/null && tmux kill-session -t hashed2test 

tmux new-session -d -s $session

tmux rename-window -t 0 'Server'
tmux send-keys -t 'Server' 'zsh' C-m 'clear' C-m

tmux send-keys -t 'Server' "./hashed2nite server --port $2" C-m

tmux send-keys -t 'Server' "$3" C-m


tmux new-window -t $session:1 -n 'Clients'
tmux send-keys -t "$session:1.0" "./hashed2nite client $1" C-m

for ((i=1; i<$3; i++)); do
    tmux split-window -h -t "$session:1"
    tmux send-keys "./hashed2nite client $1" C-m
done
tmux select-layout -t "$session:1" tiled

