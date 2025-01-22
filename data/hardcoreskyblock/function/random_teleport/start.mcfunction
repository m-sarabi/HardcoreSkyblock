# generate random coordinates
execute as @s store result score @s random_x run random value -24000..24000
execute as @s store result score @s random_z run random value -24000..24000

# tag the player
tag @s add rtp

# message the player with a yellowish message
tellraw @s {"text": "► Generating the island...","color": "#ffaa55"}

# summon the marker and teleport it there
summon marker ~ ~ ~ {Tags:["rtp"]}
execute as @e[type=marker,tag=rtp,limit=1,sort=nearest] at @s run function hardcoreskyblock:random_teleport/rtp