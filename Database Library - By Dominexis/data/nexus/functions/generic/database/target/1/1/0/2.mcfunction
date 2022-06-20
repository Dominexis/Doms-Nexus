# Execute function

execute if score #math_database_01 nexus.value matches 072 if data storage nexus:data database.list[{id:{b1:72b}}] run data modify storage nexus:data database.list[{id:{b1:72b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 073 if data storage nexus:data database.list[{id:{b1:73b}}] run data modify storage nexus:data database.list[{id:{b1:73b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 074 if data storage nexus:data database.list[{id:{b1:74b}}] run data modify storage nexus:data database.list[{id:{b1:74b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 075 if data storage nexus:data database.list[{id:{b1:75b}}] run data modify storage nexus:data database.list[{id:{b1:75b}}].target.b1 set value 1b