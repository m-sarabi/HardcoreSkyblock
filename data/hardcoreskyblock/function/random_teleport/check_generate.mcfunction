execute at @e[type=marker,tag=rtp,limit=1] run function hardcoreskyblock:generate_island
execute unless entity @e[type=marker,tag=rtp] run schedule function hardcoreskyblock:random_teleport/check_generate 5t
execute if entity @e[type=marker,tag=rtp] run function hardcoreskyblock:random_teleport/check
execute as @e[type=marker,tag=rtp] at @e[type=marker,tag=rtp] if block ~ ~-1 ~2 grass_block run function hardcoreskyblock:random_teleport/end