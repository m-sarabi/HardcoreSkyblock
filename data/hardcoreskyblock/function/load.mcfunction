scoreboard objectives add random_x dummy
scoreboard objectives add random_z dummy
scoreboard objectives add dead deathCount
scoreboard objectives add gapple minecraft.used:minecraft.golden_apple

team add dead {"text": "Dead players"}
team modify dead color red

team add dead_owner {"text": "Dead owner"}
team modify dead_owner color red
team modify dead_owner prefix [{"text": "[","color": "white"},{"text": "O","color": "dark_red"},{"text": "] ", "color": "white"}]

team add owner {"text": "Owner"}
team modify owner prefix [{"text": "[","color": "white"},{"text": "O","color": "green"},{"text": "] ", "color": "white"}]

tellraw @a { "text": "Hardcore Skyblock Pack loaded" }