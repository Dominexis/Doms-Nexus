# Execute function

execute if score #math_database_01 nexus.value matches 040 if data storage nexus:data database.list[{id:{b1:40b}}] run data modify storage nexus:data database.list[{id:{b1:40b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 041 if data storage nexus:data database.list[{id:{b1:41b}}] run data modify storage nexus:data database.list[{id:{b1:41b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 042 if data storage nexus:data database.list[{id:{b1:42b}}] run data modify storage nexus:data database.list[{id:{b1:42b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 043 if data storage nexus:data database.list[{id:{b1:43b}}] run data modify storage nexus:data database.list[{id:{b1:43b}}].target.b1 set value 1b