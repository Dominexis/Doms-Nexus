# Execute function

execute if score #math_database_01 nexus.value matches 000 if data storage nexus:data database.list[{id:{b2:0b}}] run data modify storage nexus:data database.list[{id:{b2:0b}}].target.b2 set value 1b
execute if score #math_database_01 nexus.value matches 001 if data storage nexus:data database.list[{id:{b2:1b}}] run data modify storage nexus:data database.list[{id:{b2:1b}}].target.b2 set value 1b
execute if score #math_database_01 nexus.value matches 002 if data storage nexus:data database.list[{id:{b2:2b}}] run data modify storage nexus:data database.list[{id:{b2:2b}}].target.b2 set value 1b
execute if score #math_database_01 nexus.value matches 003 if data storage nexus:data database.list[{id:{b2:3b}}] run data modify storage nexus:data database.list[{id:{b2:3b}}].target.b2 set value 1b