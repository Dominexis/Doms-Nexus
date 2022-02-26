# Execute function

execute if score #math_database_01 nexus.value matches 016 if data storage nexus:data database.list[{id:{b2:16b}}] run data modify storage nexus:data database.list[{id:{b2:16b}}].target.b2 set value 1b
execute if score #math_database_01 nexus.value matches 017 if data storage nexus:data database.list[{id:{b2:17b}}] run data modify storage nexus:data database.list[{id:{b2:17b}}].target.b2 set value 1b
execute if score #math_database_01 nexus.value matches 018 if data storage nexus:data database.list[{id:{b2:18b}}] run data modify storage nexus:data database.list[{id:{b2:18b}}].target.b2 set value 1b
execute if score #math_database_01 nexus.value matches 019 if data storage nexus:data database.list[{id:{b2:19b}}] run data modify storage nexus:data database.list[{id:{b2:19b}}].target.b2 set value 1b