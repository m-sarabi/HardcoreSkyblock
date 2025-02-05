# teleport the player
tag @s add hcsb.rtp_end
execute as @a[scores={hcsb.rtp_id=1..}] run scoreboard players operation @s hcsb.rtp_id -= @e[type=marker,tag=hcsb.rtp_end] hcsb.rtp_id
execute at @s as @a[scores={hcsb.rtp_id=0}] run tp ~0.5 ~1 ~2.5
execute as @a[scores={hcsb.rtp_id=0}] run rotate @s 180 0
tag @s remove hcsb.rtp_end

# remove the force load
forceload remove all

# message the player with a greenish message
tellraw @a[tag=hcsb.rtp] [{"text": "► Welcome to your island! Be careful and have fun!","color": "#7fff7f"}]

# remove the marker
kill @s

# remove the tag
tag @a[tag=hcsb.rtp] remove hcsb.rtp