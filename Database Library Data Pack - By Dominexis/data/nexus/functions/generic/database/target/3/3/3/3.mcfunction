# Execute function

execute if score #math_database_01 nexus.value matches 252 if data storage nexus:data database.list[{id:{b3:-4b}}] run data modify storage nexus:data database.list[{id:{b3:-4b}}].target.b3 set value 1b
execute if score #math_database_01 nexus.value matches 253 if data storage nexus:data database.list[{id:{b3:-3b}}] run data modify storage nexus:data database.list[{id:{b3:-3b}}].target.b3 set value 1b
execute if score #math_database_01 nexus.value matches 254 if data storage nexus:data database.list[{id:{b3:-2b}}] run data modify storage nexus:data database.list[{id:{b3:-2b}}].target.b3 set value 1b
execute if score #math_database_01 nexus.value matches 255 if data storage nexus:data database.list[{id:{b3:-1b}}] run data modify storage nexus:data database.list[{id:{b3:-1b}}].target.b3 set value 1b