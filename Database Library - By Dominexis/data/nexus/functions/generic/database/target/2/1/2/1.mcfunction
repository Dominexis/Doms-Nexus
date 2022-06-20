# Execute function

execute if score #math_database_01 nexus.value matches 100 if data storage nexus:data database.list[{id:{b2:100b}}] run data modify storage nexus:data database.list[{id:{b2:100b}}].target.b2 set value 1b
execute if score #math_database_01 nexus.value matches 101 if data storage nexus:data database.list[{id:{b2:101b}}] run data modify storage nexus:data database.list[{id:{b2:101b}}].target.b2 set value 1b
execute if score #math_database_01 nexus.value matches 102 if data storage nexus:data database.list[{id:{b2:102b}}] run data modify storage nexus:data database.list[{id:{b2:102b}}].target.b2 set value 1b
execute if score #math_database_01 nexus.value matches 103 if data storage nexus:data database.list[{id:{b2:103b}}] run data modify storage nexus:data database.list[{id:{b2:103b}}].target.b2 set value 1b