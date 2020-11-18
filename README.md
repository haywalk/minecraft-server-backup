# Minecraft Server Backup Script

This is the script I use to back up the [Space Hippie](https://www.spacehippie.ca) Minecraft server. I use Cron to run it every night at 22:00 local time.

This is a pretty simple script. All you need to change to get it to work on your server are the locations of the world and backup files. You may also want to change the part that says "You're playing on the Space Hippie Minecraft server", but that won't affect its function.

For this to work, Minecraft has to be running in session 0 of Tmux.
