# Execute function

execute if score #math_database_01 nexus.value matches 224 if data storage nexus:data database.list[{id:{b1:-32b}}] run data modify storage nexus:data database.list[{id:{b1:-32b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 225 if data storage nexus:data database.list[{id:{b1:-31b}}] run data modify storage nexus:data database.list[{id:{b1:-31b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 226 if data storage nexus:data database.list[{id:{b1:-30b}}] run data modify storage nexus:data database.list[{id:{b1:-30b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 227 if data storage nexus:data database.list[{id:{b1:-29b}}] run data modify storage nexus:data database.list[{id:{b1:-29b}}].target.b1 set value 1b