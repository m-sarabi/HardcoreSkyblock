scoreboard objectives add hcsb.random_x dummy
scoreboard objectives add hcsb.random_z dummy
scoreboard objectives add hcsb.dead deathCount
scoreboard objectives add hcsb.gapple minecraft.used:minecraft.golden_apple
scoreboard objectives add hcsb.rtp_id dummy
scoreboard objectives add tps trigger
scoreboard objectives add mobcaps trigger
scoreboard objectives add seed trigger

team add hcsb.dead {"text": "Dead players"}
team modify hcsb.dead color red

team add hcsb.dead_owner {"text": "Dead owner"}
team modify hcsb.dead_owner color red
team modify hcsb.dead_owner prefix [{"text": "[","color": "white"},{"text": "O","color": "dark_red"},{"text": "] ", "color": "white"}]

team add hcsb.owner {"text": "Owner"}
team modify hcsb.owner prefix [{"text": "[","color": "white"},{"text": "O","color": "green"},{"text": "] ", "color": "white"}]

tellraw @a {"text": "Hardcore Skyblock Pack loaded"}

# triggers for tps and mob_cap log commands
function hardcoreskyblock:qol/tick