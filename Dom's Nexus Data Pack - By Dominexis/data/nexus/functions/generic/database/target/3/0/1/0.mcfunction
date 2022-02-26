# Execute function

execute if score #math_database_01 nexus.value matches 016 if data storage nexus:data database.list[{id:{b3:16b}}] run data modify storage nexus:data database.list[{id:{b3:16b}}].target.b3 set value 1b
execute if score #math_database_01 nexus.value matches 017 if data storage nexus:data database.list[{id:{b3:17b}}] run data modify storage nexus:data database.list[{id:{b3:17b}}].target.b3 set value 1b
execute if score #math_database_01 nexus.value matches 018 if data storage nexus:data database.list[{id:{b3:18b}}] run data modify storage nexus:data database.list[{id:{b3:18b}}].target.b3 set value 1b
execute if score #math_database_01 nexus.value matches 019 if data storage nexus:data database.list[{id:{b3:19b}}] run data modify storage nexus:data database.list[{id:{b3:19b}}].target.b3 set value 1b