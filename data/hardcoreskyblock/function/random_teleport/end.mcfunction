# teleport the player
tp @a[tag=rtp] ~0.5 ~ ~2.5

# remove the force load
forceload remove all

# message the player with a greenish message
tellraw @a[tag=rtp] [{"text": "► Welcome to your island! Be careful and have fun!","color": "#7fff7f"}]

# remove the marker
kill @s

# remove the tag
tag @a[tag=rtp] remove rtp