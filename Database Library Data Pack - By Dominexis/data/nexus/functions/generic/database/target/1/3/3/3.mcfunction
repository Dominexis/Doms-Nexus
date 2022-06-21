# Execute function

execute if score #math_database_01 nexus.value matches 252 if data storage nexus:data database.list[{id:{b1:-4b}}] run data modify storage nexus:data database.list[{id:{b1:-4b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 253 if data storage nexus:data database.list[{id:{b1:-3b}}] run data modify storage nexus:data database.list[{id:{b1:-3b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 254 if data storage nexus:data database.list[{id:{b1:-2b}}] run data modify storage nexus:data database.list[{id:{b1:-2b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 255 if data storage nexus:data database.list[{id:{b1:-1b}}] run data modify storage nexus:data database.list[{id:{b1:-1b}}].target.b1 set value 1b