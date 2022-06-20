# Execute function

execute if score #math_database_01 nexus.value matches 032 if data storage nexus:data database.list[{id:{b0:32b}}] run data modify storage nexus:data database.list[{id:{b0:32b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 033 if data storage nexus:data database.list[{id:{b0:33b}}] run data modify storage nexus:data database.list[{id:{b0:33b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 034 if data storage nexus:data database.list[{id:{b0:34b}}] run data modify storage nexus:data database.list[{id:{b0:34b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 035 if data storage nexus:data database.list[{id:{b0:35b}}] run data modify storage nexus:data database.list[{id:{b0:35b}}].target.b0 set value 1b