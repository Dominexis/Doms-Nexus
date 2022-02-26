# Execute function

execute if score #math_database_01 nexus.value matches 240 if data storage nexus:data database.list[{id:{b2:-16b}}] run data modify storage nexus:data database.list[{id:{b2:-16b}}].target.b2 set value 1b
execute if score #math_database_01 nexus.value matches 241 if data storage nexus:data database.list[{id:{b2:-15b}}] run data modify storage nexus:data database.list[{id:{b2:-15b}}].target.b2 set value 1b
execute if score #math_database_01 nexus.value matches 242 if data storage nexus:data database.list[{id:{b2:-14b}}] run data modify storage nexus:data database.list[{id:{b2:-14b}}].target.b2 set value 1b
execute if score #math_database_01 nexus.value matches 243 if data storage nexus:data database.list[{id:{b2:-13b}}] run data modify storage nexus:data database.list[{id:{b2:-13b}}].target.b2 set value 1b