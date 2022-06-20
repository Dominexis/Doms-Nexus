# Execute function

execute if score #math_database_01 nexus.value matches 000 if data storage nexus:data database.list[{id:{b3:0b}}] run data modify storage nexus:data database.list[{id:{b3:0b}}].target.b3 set value 1b
execute if score #math_database_01 nexus.value matches 001 if data storage nexus:data database.list[{id:{b3:1b}}] run data modify storage nexus:data database.list[{id:{b3:1b}}].target.b3 set value 1b
execute if score #math_database_01 nexus.value matches 002 if data storage nexus:data database.list[{id:{b3:2b}}] run data modify storage nexus:data database.list[{id:{b3:2b}}].target.b3 set value 1b
execute if score #math_database_01 nexus.value matches 003 if data storage nexus:data database.list[{id:{b3:3b}}] run data modify storage nexus:data database.list[{id:{b3:3b}}].target.b3 set value 1b