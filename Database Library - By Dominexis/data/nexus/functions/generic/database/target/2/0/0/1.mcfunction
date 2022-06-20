# Execute function

execute if score #math_database_01 nexus.value matches 004 if data storage nexus:data database.list[{id:{b2:4b}}] run data modify storage nexus:data database.list[{id:{b2:4b}}].target.b2 set value 1b
execute if score #math_database_01 nexus.value matches 005 if data storage nexus:data database.list[{id:{b2:5b}}] run data modify storage nexus:data database.list[{id:{b2:5b}}].target.b2 set value 1b
execute if score #math_database_01 nexus.value matches 006 if data storage nexus:data database.list[{id:{b2:6b}}] run data modify storage nexus:data database.list[{id:{b2:6b}}].target.b2 set value 1b
execute if score #math_database_01 nexus.value matches 007 if data storage nexus:data database.list[{id:{b2:7b}}] run data modify storage nexus:data database.list[{id:{b2:7b}}].target.b2 set value 1b