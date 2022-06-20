# Execute function

execute if score #math_database_01 nexus.value matches 224 if data storage nexus:data database.list[{id:{b2:-32b}}] run data modify storage nexus:data database.list[{id:{b2:-32b}}].target.b2 set value 1b
execute if score #math_database_01 nexus.value matches 225 if data storage nexus:data database.list[{id:{b2:-31b}}] run data modify storage nexus:data database.list[{id:{b2:-31b}}].target.b2 set value 1b
execute if score #math_database_01 nexus.value matches 226 if data storage nexus:data database.list[{id:{b2:-30b}}] run data modify storage nexus:data database.list[{id:{b2:-30b}}].target.b2 set value 1b
execute if score #math_database_01 nexus.value matches 227 if data storage nexus:data database.list[{id:{b2:-29b}}] run data modify storage nexus:data database.list[{id:{b2:-29b}}].target.b2 set value 1b