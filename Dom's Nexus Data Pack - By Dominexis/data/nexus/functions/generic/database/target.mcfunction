# Initialize list if list is empty

execute unless data storage nexus:data database.list[0] run function nexus:generic/database/initialize







# Prepare list

data modify storage nexus:data database.list[].target set value {target:0b,b0:0b,b1:0b,b2:0b,b3:0b}







# Target entry

scoreboard players operation #math_database_00 nexus.value = #input nexus.value
scoreboard players operation #math_database_01 nexus.value = #math_database_00 nexus.value
scoreboard players operation #math_database_01 nexus.value %= #256 nexus.value
function nexus:generic/database/target/0
scoreboard players operation #math_database_00 nexus.value /= #256 nexus.value
scoreboard players operation #math_database_01 nexus.value = #math_database_00 nexus.value
scoreboard players operation #math_database_01 nexus.value %= #256 nexus.value
function nexus:generic/database/target/1
scoreboard players operation #math_database_00 nexus.value /= #256 nexus.value
scoreboard players operation #math_database_01 nexus.value = #math_database_00 nexus.value
scoreboard players operation #math_database_01 nexus.value %= #256 nexus.value
function nexus:generic/database/target/2
scoreboard players operation #math_database_00 nexus.value /= #256 nexus.value
scoreboard players operation #math_database_01 nexus.value = #math_database_00 nexus.value
scoreboard players operation #math_database_01 nexus.value %= #256 nexus.value
function nexus:generic/database/target/3







# Target entry

execute store result score #boolean nexus.value if data storage nexus:data database.list[{target:{b0:1b,b1:1b,b2:1b,b3:1b}}]
execute if score #boolean nexus.value matches 1 run data modify storage nexus:data database.list[{target:{b0:1b,b1:1b,b2:1b,b3:1b}}].target.target set value 1b







# Append to list if no target is found

execute if score #boolean nexus.value matches 0 run function nexus:generic/database/append