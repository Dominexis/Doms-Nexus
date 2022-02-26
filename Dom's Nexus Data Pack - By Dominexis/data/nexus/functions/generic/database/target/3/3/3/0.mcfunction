# Execute function

execute if score #math_database_01 nexus.value matches 240 if data storage nexus:data database.list[{id:{b3:-16b}}] run data modify storage nexus:data database.list[{id:{b3:-16b}}].target.b3 set value 1b
execute if score #math_database_01 nexus.value matches 241 if data storage nexus:data database.list[{id:{b3:-15b}}] run data modify storage nexus:data database.list[{id:{b3:-15b}}].target.b3 set value 1b
execute if score #math_database_01 nexus.value matches 242 if data storage nexus:data database.list[{id:{b3:-14b}}] run data modify storage nexus:data database.list[{id:{b3:-14b}}].target.b3 set value 1b
execute if score #math_database_01 nexus.value matches 243 if data storage nexus:data database.list[{id:{b3:-13b}}] run data modify storage nexus:data database.list[{id:{b3:-13b}}].target.b3 set value 1b