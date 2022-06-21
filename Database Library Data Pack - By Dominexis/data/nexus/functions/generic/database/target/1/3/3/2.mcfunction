# Execute function

execute if score #math_database_01 nexus.value matches 248 if data storage nexus:data database.list[{id:{b1:-8b}}] run data modify storage nexus:data database.list[{id:{b1:-8b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 249 if data storage nexus:data database.list[{id:{b1:-7b}}] run data modify storage nexus:data database.list[{id:{b1:-7b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 250 if data storage nexus:data database.list[{id:{b1:-6b}}] run data modify storage nexus:data database.list[{id:{b1:-6b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 251 if data storage nexus:data database.list[{id:{b1:-5b}}] run data modify storage nexus:data database.list[{id:{b1:-5b}}].target.b1 set value 1b