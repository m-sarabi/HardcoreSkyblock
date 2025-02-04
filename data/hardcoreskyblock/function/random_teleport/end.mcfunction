# teleport the player
tp @a[tag=hcsb.rtp] ~0.5 ~ ~2.5 180 0

# remove the force load
forceload remove all

# message the player with a greenish message
tellraw @a[tag=hcsb.rtp] [{"text": "► Welcome to your island! Be careful and have fun!","color": "#7fff7f"}]

# remove the marker
kill @s

# remove the tag
tag @a[tag=hcsb.rtp] remove hcsb.rtp