#!/bin/sh

#
# Hayden's Minecraft server backup script for GNU/Linux and TMUX
#

dir="/backup/location" # Abs. path to backup folder
world="/world/location" # Abs. path to world folder

# Announce backup
tmux send-keys -t 0 "say Preparing to backup the server..." ENTER

# Stop saving
tmux send-keys -t 0 "save-off" ENTER
sleep 1s
tmux send-keys -t 0 "save-all" ENTER
sleep 1s

# Announce that saving has stopped
tmux send-keys -t 0 "say The world has been saved. Backing up now. The game will not be saved until the backup has finished." ENTER

# Set day of week
day=$(date +%A)

# Backup server to USB
sleep 5s
tar -cpvzf $dir/minecraft-$day.tar.gz $world
sleep 5s

# Restart saving
tmux send-keys -t 0 "save-on" ENTER

# Announce completion
tmux send-keys -t 0 "say Backup complete. Saving re-enabled." ENTER
