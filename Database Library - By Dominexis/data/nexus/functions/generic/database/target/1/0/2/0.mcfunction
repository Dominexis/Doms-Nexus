# Execute function

execute if score #math_database_01 nexus.value matches 032 if data storage nexus:data database.list[{id:{b1:32b}}] run data modify storage nexus:data database.list[{id:{b1:32b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 033 if data storage nexus:data database.list[{id:{b1:33b}}] run data modify storage nexus:data database.list[{id:{b1:33b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 034 if data storage nexus:data database.list[{id:{b1:34b}}] run data modify storage nexus:data database.list[{id:{b1:34b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 035 if data storage nexus:data database.list[{id:{b1:35b}}] run data modify storage nexus:data database.list[{id:{b1:35b}}].target.b1 set value 1b