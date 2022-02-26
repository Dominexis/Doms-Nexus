# Execute function

execute if score #math_database_01 nexus.value matches 204 if data storage nexus:data database.list[{id:{b0:-52b}}] run data modify storage nexus:data database.list[{id:{b0:-52b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 205 if data storage nexus:data database.list[{id:{b0:-51b}}] run data modify storage nexus:data database.list[{id:{b0:-51b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 206 if data storage nexus:data database.list[{id:{b0:-50b}}] run data modify storage nexus:data database.list[{id:{b0:-50b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 207 if data storage nexus:data database.list[{id:{b0:-49b}}] run data modify storage nexus:data database.list[{id:{b0:-49b}}].target.b0 set value 1b