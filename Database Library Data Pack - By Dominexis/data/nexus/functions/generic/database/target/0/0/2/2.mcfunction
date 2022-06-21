# Execute function

execute if score #math_database_01 nexus.value matches 040 if data storage nexus:data database.list[{id:{b0:40b}}] run data modify storage nexus:data database.list[{id:{b0:40b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 041 if data storage nexus:data database.list[{id:{b0:41b}}] run data modify storage nexus:data database.list[{id:{b0:41b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 042 if data storage nexus:data database.list[{id:{b0:42b}}] run data modify storage nexus:data database.list[{id:{b0:42b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 043 if data storage nexus:data database.list[{id:{b0:43b}}] run data modify storage nexus:data database.list[{id:{b0:43b}}].target.b0 set value 1b