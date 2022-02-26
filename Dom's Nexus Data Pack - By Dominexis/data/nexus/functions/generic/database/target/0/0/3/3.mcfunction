# Execute function

execute if score #math_database_01 nexus.value matches 060 if data storage nexus:data database.list[{id:{b0:60b}}] run data modify storage nexus:data database.list[{id:{b0:60b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 061 if data storage nexus:data database.list[{id:{b0:61b}}] run data modify storage nexus:data database.list[{id:{b0:61b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 062 if data storage nexus:data database.list[{id:{b0:62b}}] run data modify storage nexus:data database.list[{id:{b0:62b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 063 if data storage nexus:data database.list[{id:{b0:63b}}] run data modify storage nexus:data database.list[{id:{b0:63b}}].target.b0 set value 1b