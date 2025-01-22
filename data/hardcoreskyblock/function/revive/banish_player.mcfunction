tag @s add dead
execute as @s[team=!owner] run team join dead @s
execute as @s[team=owner] run team join dead_owner @s
tellraw @s [{"text":"Eat a "},{"text": "Golden Apple","bold":true,"color":"gold"},{"text":" to revive"}]
scoreboard players set @s gapple 0
function hardcoreskyblock:revive/spawn_dead