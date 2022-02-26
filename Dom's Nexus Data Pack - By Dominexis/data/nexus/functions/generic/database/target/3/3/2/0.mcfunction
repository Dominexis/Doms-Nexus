# Execute function

execute if score #math_database_01 nexus.value matches 224 if data storage nexus:data database.list[{id:{b3:-32b}}] run data modify storage nexus:data database.list[{id:{b3:-32b}}].target.b3 set value 1b
execute if score #math_database_01 nexus.value matches 225 if data storage nexus:data database.list[{id:{b3:-31b}}] run data modify storage nexus:data database.list[{id:{b3:-31b}}].target.b3 set value 1b
execute if score #math_database_01 nexus.value matches 226 if data storage nexus:data database.list[{id:{b3:-30b}}] run data modify storage nexus:data database.list[{id:{b3:-30b}}].target.b3 set value 1b
execute if score #math_database_01 nexus.value matches 227 if data storage nexus:data database.list[{id:{b3:-29b}}] run data modify storage nexus:data database.list[{id:{b3:-29b}}].target.b3 set value 1b