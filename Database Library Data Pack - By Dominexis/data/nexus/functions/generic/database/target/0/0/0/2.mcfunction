# Execute function

execute if score #math_database_01 nexus.value matches 008 if data storage nexus:data database.list[{id:{b0:8b}}] run data modify storage nexus:data database.list[{id:{b0:8b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 009 if data storage nexus:data database.list[{id:{b0:9b}}] run data modify storage nexus:data database.list[{id:{b0:9b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 010 if data storage nexus:data database.list[{id:{b0:10b}}] run data modify storage nexus:data database.list[{id:{b0:10b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 011 if data storage nexus:data database.list[{id:{b0:11b}}] run data modify storage nexus:data database.list[{id:{b0:11b}}].target.b0 set value 1b