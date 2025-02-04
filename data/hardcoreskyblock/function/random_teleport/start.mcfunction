# reset effects, health and hunger
effect clear @s
effect give @s resistance 4 4 true
effect give @s minecraft:saturation 4 255 true
effect give @s minecraft:regeneration 4 255 true
effect give @s minecraft:slowness 4 6 true

# generate random coordinates
execute as @s store result score @s hcsb.random_x run random value -24000..24000
execute as @s store result score @s hcsb.random_z run random value -24000..24000

# tag the player
tag @s add hcsb.rtp

# message the player with a yellowish message
tellraw @s {"text": "► Generating the island...","color": "#ffaa55"}

# summon the marker and teleport it there
summon marker ~ ~ ~ {Tags:["hcsb.rtp"]}
execute as @e[type=marker,tag=hcsb.rtp,limit=1,sort=nearest] at @s run function hardcoreskyblock:random_teleport/rtp