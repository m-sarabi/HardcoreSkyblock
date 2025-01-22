tag @s add dead
execute as @s[team=!owner] run team join dead @s
execute as @s[team=owner] run team join dead_owner @s
function hardcoreskyblock:revive/spawn_dead