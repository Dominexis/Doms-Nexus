# Execute function

execute if score #math_database_01 nexus.value matches 008 if data storage nexus:data database.list[{id:{b2:8b}}] run data modify storage nexus:data database.list[{id:{b2:8b}}].target.b2 set value 1b
execute if score #math_database_01 nexus.value matches 009 if data storage nexus:data database.list[{id:{b2:9b}}] run data modify storage nexus:data database.list[{id:{b2:9b}}].target.b2 set value 1b
execute if score #math_database_01 nexus.value matches 010 if data storage nexus:data database.list[{id:{b2:10b}}] run data modify storage nexus:data database.list[{id:{b2:10b}}].target.b2 set value 1b
execute if score #math_database_01 nexus.value matches 011 if data storage nexus:data database.list[{id:{b2:11b}}] run data modify storage nexus:data database.list[{id:{b2:11b}}].target.b2 set value 1b