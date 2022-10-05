# Adjust sub-block position

scoreboard players operation #subblock_y nexus.value %= #2 nexus.value







# Check current block

execute if block ~ ~ ~ #minecraft:slabs[type=double] run scoreboard players set #climb_amount nexus.value 0
execute if score #subblock_y nexus.value matches 1 if block ~ ~ ~ #minecraft:slabs[type=top   ] run scoreboard players set #climb_amount nexus.value 0
execute if score #subblock_y nexus.value matches 0 if block ~ ~ ~ #minecraft:slabs[type=bottom] run scoreboard players set #climb_amount nexus.value 0