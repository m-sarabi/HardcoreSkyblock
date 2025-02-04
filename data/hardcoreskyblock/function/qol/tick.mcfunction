# tps command
execute as @a if score @s tps matches 1.. run log tps
execute as @a if score @s tps matches 1.. run scoreboard players set @s tps 0

# mobcaps command
execute as @a if score @s mobcaps matches 1.. run log mobcaps
execute as @a if score @s mobcaps matches 1.. run scoreboard players set @s mobcaps 0

execute as @a run scoreboard players enable @s tps
execute as @a run scoreboard players enable @s mobcaps
schedule function hardcoreskyblock:qol/tick 10t