# Execute function

execute if score #math_database_01 nexus.value matches 004 if data storage nexus:data database.list[{id:{b3:4b}}] run data modify storage nexus:data database.list[{id:{b3:4b}}].target.b3 set value 1b
execute if score #math_database_01 nexus.value matches 005 if data storage nexus:data database.list[{id:{b3:5b}}] run data modify storage nexus:data database.list[{id:{b3:5b}}].target.b3 set value 1b
execute if score #math_database_01 nexus.value matches 006 if data storage nexus:data database.list[{id:{b3:6b}}] run data modify storage nexus:data database.list[{id:{b3:6b}}].target.b3 set value 1b
execute if score #math_database_01 nexus.value matches 007 if data storage nexus:data database.list[{id:{b3:7b}}] run data modify storage nexus:data database.list[{id:{b3:7b}}].target.b3 set value 1b