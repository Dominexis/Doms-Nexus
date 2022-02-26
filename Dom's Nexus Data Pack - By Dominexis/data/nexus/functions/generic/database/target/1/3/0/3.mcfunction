# Execute function

execute if score #math_database_01 nexus.value matches 204 if data storage nexus:data database.list[{id:{b1:-52b}}] run data modify storage nexus:data database.list[{id:{b1:-52b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 205 if data storage nexus:data database.list[{id:{b1:-51b}}] run data modify storage nexus:data database.list[{id:{b1:-51b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 206 if data storage nexus:data database.list[{id:{b1:-50b}}] run data modify storage nexus:data database.list[{id:{b1:-50b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 207 if data storage nexus:data database.list[{id:{b1:-49b}}] run data modify storage nexus:data database.list[{id:{b1:-49b}}].target.b1 set value 1b