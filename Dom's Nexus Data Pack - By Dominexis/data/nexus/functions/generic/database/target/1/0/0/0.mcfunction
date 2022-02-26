# Execute function

execute if score #math_database_01 nexus.value matches 000 if data storage nexus:data database.list[{id:{b1:0b}}] run data modify storage nexus:data database.list[{id:{b1:0b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 001 if data storage nexus:data database.list[{id:{b1:1b}}] run data modify storage nexus:data database.list[{id:{b1:1b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 002 if data storage nexus:data database.list[{id:{b1:2b}}] run data modify storage nexus:data database.list[{id:{b1:2b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 003 if data storage nexus:data database.list[{id:{b1:3b}}] run data modify storage nexus:data database.list[{id:{b1:3b}}].target.b1 set value 1b