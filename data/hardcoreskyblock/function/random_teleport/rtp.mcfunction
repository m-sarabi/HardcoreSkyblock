# teleport the marker
tp @s ~ 64 ~
execute store result entity @s Pos[0] double 1 run scoreboard players get @a[tag=rtp,limit=1] random_x
execute store result entity @s Pos[2] double 1 run scoreboard players get @a[tag=rtp,limit=1] random_z

# force load the area
execute at @s run forceload add ~-4 ~-4 ~4 ~4

# while the area is not loaded, keep trying to generate the island
function hardcoreskyblock:random_teleport/check_generate