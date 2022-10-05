# Set boolean

scoreboard players set #boolean nexus.value -1







# Adjust sub-block position

scoreboard players operation #subblock_x nexus.value %= #2 nexus.value
scoreboard players operation #subblock_y nexus.value %= #2 nexus.value
scoreboard players operation #subblock_z nexus.value %= #2 nexus.value







# Check current block

execute if score #subblock_y nexus.value matches 1 if block ~ ~ ~ #minecraft:stairs[half=top   ] run scoreboard players set #boolean nexus.value 1
execute if score #subblock_y nexus.value matches 0 if block ~ ~ ~ #minecraft:stairs[half=bottom] run scoreboard players set #boolean nexus.value 1

execute if score #subblock_x nexus.value matches 0 if block ~ ~ ~ #minecraft:stairs[shape=straight,facing=west ] run scoreboard players set #boolean nexus.value 1
execute if score #subblock_x nexus.value matches 1 if block ~ ~ ~ #minecraft:stairs[shape=straight,facing=east ] run scoreboard players set #boolean nexus.value 1
execute if score #subblock_z nexus.value matches 0 if block ~ ~ ~ #minecraft:stairs[shape=straight,facing=north] run scoreboard players set #boolean nexus.value 1
execute if score #subblock_z nexus.value matches 1 if block ~ ~ ~ #minecraft:stairs[shape=straight,facing=south] run scoreboard players set #boolean nexus.value 1



execute if score #subblock_x nexus.value matches 0 if score #subblock_z nexus.value matches 0 if block ~ ~ ~ #minecraft:stairs[shape=outer_left ,facing=north] run scoreboard players set #boolean nexus.value 1
execute if score #subblock_x nexus.value matches 0 if score #subblock_z nexus.value matches 0 if block ~ ~ ~ #minecraft:stairs[shape=outer_right,facing=west ] run scoreboard players set #boolean nexus.value 1
execute if score #subblock_x nexus.value matches 1 if score #subblock_z nexus.value matches 0 if block ~ ~ ~ #minecraft:stairs[shape=outer_left ,facing=east ] run scoreboard players set #boolean nexus.value 1
execute if score #subblock_x nexus.value matches 1 if score #subblock_z nexus.value matches 0 if block ~ ~ ~ #minecraft:stairs[shape=outer_right,facing=north] run scoreboard players set #boolean nexus.value 1
execute if score #subblock_x nexus.value matches 0 if score #subblock_z nexus.value matches 1 if block ~ ~ ~ #minecraft:stairs[shape=outer_left ,facing=west ] run scoreboard players set #boolean nexus.value 1
execute if score #subblock_x nexus.value matches 0 if score #subblock_z nexus.value matches 1 if block ~ ~ ~ #minecraft:stairs[shape=outer_right,facing=south] run scoreboard players set #boolean nexus.value 1
execute if score #subblock_x nexus.value matches 1 if score #subblock_z nexus.value matches 1 if block ~ ~ ~ #minecraft:stairs[shape=outer_left ,facing=south] run scoreboard players set #boolean nexus.value 1
execute if score #subblock_x nexus.value matches 1 if score #subblock_z nexus.value matches 1 if block ~ ~ ~ #minecraft:stairs[shape=outer_right,facing=east ] run scoreboard players set #boolean nexus.value 1



execute if score #subblock_x nexus.value matches 0 if block ~ ~ ~ #minecraft:stairs[shape=inner_left ,facing=north] run scoreboard players set #boolean nexus.value 1
execute if score #subblock_z nexus.value matches 0 if block ~ ~ ~ #minecraft:stairs[shape=inner_left ,facing=north] run scoreboard players set #boolean nexus.value 1
execute if score #subblock_x nexus.value matches 0 if block ~ ~ ~ #minecraft:stairs[shape=inner_right,facing=west ] run scoreboard players set #boolean nexus.value 1
execute if score #subblock_z nexus.value matches 0 if block ~ ~ ~ #minecraft:stairs[shape=inner_right,facing=west ] run scoreboard players set #boolean nexus.value 1

execute if score #subblock_x nexus.value matches 1 if block ~ ~ ~ #minecraft:stairs[shape=inner_left ,facing=east ] run scoreboard players set #boolean nexus.value 1
execute if score #subblock_z nexus.value matches 0 if block ~ ~ ~ #minecraft:stairs[shape=inner_left ,facing=east ] run scoreboard players set #boolean nexus.value 1
execute if score #subblock_x nexus.value matches 1 if block ~ ~ ~ #minecraft:stairs[shape=inner_right,facing=north] run scoreboard players set #boolean nexus.value 1
execute if score #subblock_z nexus.value matches 0 if block ~ ~ ~ #minecraft:stairs[shape=inner_right,facing=north] run scoreboard players set #boolean nexus.value 1

execute if score #subblock_x nexus.value matches 0 if block ~ ~ ~ #minecraft:stairs[shape=inner_left ,facing=west ] run scoreboard players set #boolean nexus.value 1
execute if score #subblock_z nexus.value matches 1 if block ~ ~ ~ #minecraft:stairs[shape=inner_left ,facing=west ] run scoreboard players set #boolean nexus.value 1
execute if score #subblock_x nexus.value matches 0 if block ~ ~ ~ #minecraft:stairs[shape=inner_right,facing=south] run scoreboard players set #boolean nexus.value 1
execute if score #subblock_z nexus.value matches 1 if block ~ ~ ~ #minecraft:stairs[shape=inner_right,facing=south] run scoreboard players set #boolean nexus.value 1

execute if score #subblock_x nexus.value matches 1 if block ~ ~ ~ #minecraft:stairs[shape=inner_left ,facing=south] run scoreboard players set #boolean nexus.value 1
execute if score #subblock_z nexus.value matches 1 if block ~ ~ ~ #minecraft:stairs[shape=inner_left ,facing=south] run scoreboard players set #boolean nexus.value 1
execute if score #subblock_x nexus.value matches 1 if block ~ ~ ~ #minecraft:stairs[shape=inner_right,facing=east ] run scoreboard players set #boolean nexus.value 1
execute if score #subblock_z nexus.value matches 1 if block ~ ~ ~ #minecraft:stairs[shape=inner_right,facing=east ] run scoreboard players set #boolean nexus.value 1