# Execute function

execute if score #math_database_01 nexus.value matches 240 if data storage nexus:data database.list[{id:{b1:-16b}}] run data modify storage nexus:data database.list[{id:{b1:-16b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 241 if data storage nexus:data database.list[{id:{b1:-15b}}] run data modify storage nexus:data database.list[{id:{b1:-15b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 242 if data storage nexus:data database.list[{id:{b1:-14b}}] run data modify storage nexus:data database.list[{id:{b1:-14b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 243 if data storage nexus:data database.list[{id:{b1:-13b}}] run data modify storage nexus:data database.list[{id:{b1:-13b}}].target.b1 set value 1b