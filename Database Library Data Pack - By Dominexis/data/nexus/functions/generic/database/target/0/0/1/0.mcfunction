# Execute function

execute if score #math_database_01 nexus.value matches 016 if data storage nexus:data database.list[{id:{b0:16b}}] run data modify storage nexus:data database.list[{id:{b0:16b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 017 if data storage nexus:data database.list[{id:{b0:17b}}] run data modify storage nexus:data database.list[{id:{b0:17b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 018 if data storage nexus:data database.list[{id:{b0:18b}}] run data modify storage nexus:data database.list[{id:{b0:18b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 019 if data storage nexus:data database.list[{id:{b0:19b}}] run data modify storage nexus:data database.list[{id:{b0:19b}}].target.b0 set value 1b