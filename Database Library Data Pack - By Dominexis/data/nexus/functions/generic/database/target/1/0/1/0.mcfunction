# Execute function

execute if score #math_database_01 nexus.value matches 016 if data storage nexus:data database.list[{id:{b1:16b}}] run data modify storage nexus:data database.list[{id:{b1:16b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 017 if data storage nexus:data database.list[{id:{b1:17b}}] run data modify storage nexus:data database.list[{id:{b1:17b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 018 if data storage nexus:data database.list[{id:{b1:18b}}] run data modify storage nexus:data database.list[{id:{b1:18b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 019 if data storage nexus:data database.list[{id:{b1:19b}}] run data modify storage nexus:data database.list[{id:{b1:19b}}].target.b1 set value 1b