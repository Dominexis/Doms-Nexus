# Execute function

execute if score #math_database_01 nexus.value matches 072 if data storage nexus:data database.list[{id:{b0:72b}}] run data modify storage nexus:data database.list[{id:{b0:72b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 073 if data storage nexus:data database.list[{id:{b0:73b}}] run data modify storage nexus:data database.list[{id:{b0:73b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 074 if data storage nexus:data database.list[{id:{b0:74b}}] run data modify storage nexus:data database.list[{id:{b0:74b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 075 if data storage nexus:data database.list[{id:{b0:75b}}] run data modify storage nexus:data database.list[{id:{b0:75b}}].target.b0 set value 1b