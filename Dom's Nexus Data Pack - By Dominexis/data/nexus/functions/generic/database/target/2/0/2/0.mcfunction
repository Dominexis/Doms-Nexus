# Execute function

execute if score #math_database_01 nexus.value matches 032 if data storage nexus:data database.list[{id:{b2:32b}}] run data modify storage nexus:data database.list[{id:{b2:32b}}].target.b2 set value 1b
execute if score #math_database_01 nexus.value matches 033 if data storage nexus:data database.list[{id:{b2:33b}}] run data modify storage nexus:data database.list[{id:{b2:33b}}].target.b2 set value 1b
execute if score #math_database_01 nexus.value matches 034 if data storage nexus:data database.list[{id:{b2:34b}}] run data modify storage nexus:data database.list[{id:{b2:34b}}].target.b2 set value 1b
execute if score #math_database_01 nexus.value matches 035 if data storage nexus:data database.list[{id:{b2:35b}}] run data modify storage nexus:data database.list[{id:{b2:35b}}].target.b2 set value 1b