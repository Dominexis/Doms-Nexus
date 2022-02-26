# Execute function

execute if score #math_database_01 nexus.value matches 204 if data storage nexus:data database.list[{id:{b2:-52b}}] run data modify storage nexus:data database.list[{id:{b2:-52b}}].target.b2 set value 1b
execute if score #math_database_01 nexus.value matches 205 if data storage nexus:data database.list[{id:{b2:-51b}}] run data modify storage nexus:data database.list[{id:{b2:-51b}}].target.b2 set value 1b
execute if score #math_database_01 nexus.value matches 206 if data storage nexus:data database.list[{id:{b2:-50b}}] run data modify storage nexus:data database.list[{id:{b2:-50b}}].target.b2 set value 1b
execute if score #math_database_01 nexus.value matches 207 if data storage nexus:data database.list[{id:{b2:-49b}}] run data modify storage nexus:data database.list[{id:{b2:-49b}}].target.b2 set value 1b