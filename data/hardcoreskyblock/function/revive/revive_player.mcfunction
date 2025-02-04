tag @s remove hcsb.dead
scoreboard players set @s hcsb.dead 0
gamemode survival @s
execute as @s[team=hcsb.dead_owner] run team join hcsb.owner @s
execute as @s[team=hcsb.dead] run team leave @s
scoreboard players set @s hcsb.gapple 0

# clear the inventory and xp levels
clear @s
xp add @s -1000 levels

# reset progress
advancement revoke @s everything
recipe take @s *

# teleport the player
execute as @s run function hardcoreskyblock:random_teleport/start