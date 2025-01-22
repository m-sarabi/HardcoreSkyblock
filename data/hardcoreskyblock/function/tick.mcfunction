# new players
execute as @a[tag=!joined] at @s run function hardcoreskyblock:new_player

# check revive timer
execute as @a[scores={revive_time=1..}] run function hardcoreskyblock:revive/revive_timer

# player death
execute as @a[scores={dead=1..},gamemode=spectator,tag=!dead] in hardcoreskyblock:the_afterlife run function hardcoreskyblock:revive/banish_player
execute as @a[scores={dead=1..},gamemode=spectator,tag=dead] in hardcoreskyblock:the_afterlife run function hardcoreskyblock:revive/spawn_dead
execute as @a[tag=dead] run scoreboard players add @s revive_timer 1
execute as @a[tag=dead] run scoreboard players enable @s revive_time
execute as @a[tag=dead] run scoreboard players operation @s remaining = #max_timer constants
execute as @a[tag=dead] run scoreboard players operation @s remaining -= @s revive_timer
execute as @a[scores={revive_timer=10},tag=dead] run tellraw @s [{"text": "You died!\nYou will revive in "},{"score": {"name": "@s","objective": "remaining"},"color": "#ffaaaa"},{"text": " Online ticks (2 hour)"}]
execute as @a[scores={revive_timer=10},tag=dead] run tellraw @s [{"text": "Yes, you need to be "},{"text":"online","color": "#ffaa00"},{"text": " for 2 hours!\nCheck the timer with "},{"clickEvent": {"action": "suggest_command","value": "/trigger revive_time"},"text": "/trigger revive_time","color": "#8b8bfa"}]

# todo: add boss bar to show revive timer

# warn the dead players that they are going to be revived in one minute
execute as @a[scores={revive_timer=142810},tag=dead] run tellraw @s [{"text": "Warning!\n","color": "#fc3e0e"},{"text": "You will be revived in one minute!\nYour inventory will be cleared!","color": "#ff781d"}]
execute as @a[scores={revive_timer=142810},tag=dead] at @s run playsound entity.ghast.scream master @s ~ ~ ~ 1 0.1

execute as @a[scores={revive_timer=144010..},tag=dead] run function hardcoreskyblock:revive/revive_player