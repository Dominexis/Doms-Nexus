# Execute function

execute if score #math_database_01 nexus.value matches 220 if data storage nexus:data database.list[{id:{b1:-36b}}] run data modify storage nexus:data database.list[{id:{b1:-36b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 221 if data storage nexus:data database.list[{id:{b1:-35b}}] run data modify storage nexus:data database.list[{id:{b1:-35b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 222 if data storage nexus:data database.list[{id:{b1:-34b}}] run data modify storage nexus:data database.list[{id:{b1:-34b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 223 if data storage nexus:data database.list[{id:{b1:-33b}}] run data modify storage nexus:data database.list[{id:{b1:-33b}}].target.b1 set value 1b