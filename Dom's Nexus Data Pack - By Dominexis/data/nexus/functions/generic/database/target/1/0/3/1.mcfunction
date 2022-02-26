# Execute function

execute if score #math_database_01 nexus.value matches 052 if data storage nexus:data database.list[{id:{b1:52b}}] run data modify storage nexus:data database.list[{id:{b1:52b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 053 if data storage nexus:data database.list[{id:{b1:53b}}] run data modify storage nexus:data database.list[{id:{b1:53b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 054 if data storage nexus:data database.list[{id:{b1:54b}}] run data modify storage nexus:data database.list[{id:{b1:54b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 055 if data storage nexus:data database.list[{id:{b1:55b}}] run data modify storage nexus:data database.list[{id:{b1:55b}}].target.b1 set value 1b