# new players
execute as @a[tag=!joined] at @s run function hardcoreskyblock:new_player

# player death
execute as @a[scores={dead=1..},gamemode=spectator,tag=!dead] in hardcoreskyblock:the_afterlife run function hardcoreskyblock:revive/banish_player
execute as @a[scores={dead=1..},gamemode=spectator,tag=dead] in hardcoreskyblock:the_afterlife run function hardcoreskyblock:revive/spawn_dead

# revive player
execute as @a[tag=dead] if score @s gapple matches 1.. run function hardcoreskyblock:revive/revive_player