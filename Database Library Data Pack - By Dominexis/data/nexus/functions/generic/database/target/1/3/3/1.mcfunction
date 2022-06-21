# Execute function

execute if score #math_database_01 nexus.value matches 244 if data storage nexus:data database.list[{id:{b1:-12b}}] run data modify storage nexus:data database.list[{id:{b1:-12b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 245 if data storage nexus:data database.list[{id:{b1:-11b}}] run data modify storage nexus:data database.list[{id:{b1:-11b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 246 if data storage nexus:data database.list[{id:{b1:-10b}}] run data modify storage nexus:data database.list[{id:{b1:-10b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 247 if data storage nexus:data database.list[{id:{b1:-9b}}] run data modify storage nexus:data database.list[{id:{b1:-9b}}].target.b1 set value 1b