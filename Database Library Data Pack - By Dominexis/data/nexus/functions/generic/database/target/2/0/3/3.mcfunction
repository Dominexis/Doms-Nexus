# Execute function

execute if score #math_database_01 nexus.value matches 060 if data storage nexus:data database.list[{id:{b2:60b}}] run data modify storage nexus:data database.list[{id:{b2:60b}}].target.b2 set value 1b
execute if score #math_database_01 nexus.value matches 061 if data storage nexus:data database.list[{id:{b2:61b}}] run data modify storage nexus:data database.list[{id:{b2:61b}}].target.b2 set value 1b
execute if score #math_database_01 nexus.value matches 062 if data storage nexus:data database.list[{id:{b2:62b}}] run data modify storage nexus:data database.list[{id:{b2:62b}}].target.b2 set value 1b
execute if score #math_database_01 nexus.value matches 063 if data storage nexus:data database.list[{id:{b2:63b}}] run data modify storage nexus:data database.list[{id:{b2:63b}}].target.b2 set value 1b