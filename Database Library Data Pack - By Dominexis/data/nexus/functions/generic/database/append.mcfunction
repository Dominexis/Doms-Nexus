# Append entry

data modify storage nexus:data database.list append value {id:{id:0,b0:0b,b1:0b,b2:0b,b3:0b},target:{target:1b,b0:1b,b1:1b,b2:1b,b3:1b},tag:{}}







# Assign ID

scoreboard players operation #math_database_00 nexus.value = #input nexus.value
scoreboard players operation #math_database_01 nexus.value = #math_database_00 nexus.value
scoreboard players operation #math_database_01 nexus.value %= #256 nexus.value
execute store result storage nexus:data database.list[-1].id.b0 byte 1 run scoreboard players get #math_database_01 nexus.value
scoreboard players operation #math_database_00 nexus.value /= #256 nexus.value
scoreboard players operation #math_database_01 nexus.value = #math_database_00 nexus.value
scoreboard players operation #math_database_01 nexus.value %= #256 nexus.value
execute store result storage nexus:data database.list[-1].id.b1 byte 1 run scoreboard players get #math_database_01 nexus.value
scoreboard players operation #math_database_00 nexus.value /= #256 nexus.value
scoreboard players operation #math_database_01 nexus.value = #math_database_00 nexus.value
scoreboard players operation #math_database_01 nexus.value %= #256 nexus.value
execute store result storage nexus:data database.list[-1].id.b2 byte 1 run scoreboard players get #math_database_01 nexus.value
scoreboard players operation #math_database_00 nexus.value /= #256 nexus.value
scoreboard players operation #math_database_01 nexus.value = #math_database_00 nexus.value
scoreboard players operation #math_database_01 nexus.value %= #256 nexus.value
execute store result storage nexus:data database.list[-1].id.b3 byte 1 run scoreboard players get #math_database_01 nexus.value







# Write to ID

execute store result storage nexus:data database.list[-1].id.id int 1 run scoreboard players get #input nexus.value