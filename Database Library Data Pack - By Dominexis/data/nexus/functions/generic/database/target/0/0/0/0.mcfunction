# Execute function

execute if score #math_database_01 nexus.value matches 000 if data storage nexus:data database.list[{id:{b0:0b}}] run data modify storage nexus:data database.list[{id:{b0:0b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 001 if data storage nexus:data database.list[{id:{b0:1b}}] run data modify storage nexus:data database.list[{id:{b0:1b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 002 if data storage nexus:data database.list[{id:{b0:2b}}] run data modify storage nexus:data database.list[{id:{b0:2b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 003 if data storage nexus:data database.list[{id:{b0:3b}}] run data modify storage nexus:data database.list[{id:{b0:3b}}].target.b0 set value 1b