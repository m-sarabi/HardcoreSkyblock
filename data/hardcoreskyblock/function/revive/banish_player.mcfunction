tag @s add hcsb.dead
execute as @s[team=!hcsb.owner] run team join hcsb.dead @s
execute as @s[team=hcsb.owner] run team join hcsb.dead_owner @s
tellraw @s [{"text":"Eat a "},{"text": "Golden Apple","bold":true,"color":"gold"},{"text":" to revive"}]
scoreboard players set @s hcsb.gapple 0
function hardcoreskyblock:revive/spawn_dead