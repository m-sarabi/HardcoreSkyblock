# new players
execute as @a[tag=!hcsb.joined] at @s run function hardcoreskyblock:new_player

# player death
execute as @a[scores={hcsb.dead=1..},gamemode=spectator,tag=!hcsb.dead] in hardcoreskyblock:the_afterlife run function hardcoreskyblock:revive/banish_player
execute as @a[scores={hcsb.dead=1..},gamemode=spectator,tag=hcsb.dead] in hardcoreskyblock:the_afterlife run function hardcoreskyblock:revive/spawn_dead

# revive player
execute as @a[tag=hcsb.dead] if score @s hcsb.gapple matches 1.. run function hardcoreskyblock:revive/revive_player