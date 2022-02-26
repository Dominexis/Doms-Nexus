# Execute function

execute if score #math_database_01 nexus.value matches 240 if data storage nexus:data database.list[{id:{b0:-16b}}] run data modify storage nexus:data database.list[{id:{b0:-16b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 241 if data storage nexus:data database.list[{id:{b0:-15b}}] run data modify storage nexus:data database.list[{id:{b0:-15b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 242 if data storage nexus:data database.list[{id:{b0:-14b}}] run data modify storage nexus:data database.list[{id:{b0:-14b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 243 if data storage nexus:data database.list[{id:{b0:-13b}}] run data modify storage nexus:data database.list[{id:{b0:-13b}}].target.b0 set value 1b