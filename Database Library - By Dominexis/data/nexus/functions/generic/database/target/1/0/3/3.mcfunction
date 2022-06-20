# Execute function

execute if score #math_database_01 nexus.value matches 060 if data storage nexus:data database.list[{id:{b1:60b}}] run data modify storage nexus:data database.list[{id:{b1:60b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 061 if data storage nexus:data database.list[{id:{b1:61b}}] run data modify storage nexus:data database.list[{id:{b1:61b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 062 if data storage nexus:data database.list[{id:{b1:62b}}] run data modify storage nexus:data database.list[{id:{b1:62b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 063 if data storage nexus:data database.list[{id:{b1:63b}}] run data modify storage nexus:data database.list[{id:{b1:63b}}].target.b1 set value 1b