# Execute function

execute if score #math_database_01 nexus.value matches 100 if data storage nexus:data database.list[{id:{b3:100b}}] run data modify storage nexus:data database.list[{id:{b3:100b}}].target.b3 set value 1b
execute if score #math_database_01 nexus.value matches 101 if data storage nexus:data database.list[{id:{b3:101b}}] run data modify storage nexus:data database.list[{id:{b3:101b}}].target.b3 set value 1b
execute if score #math_database_01 nexus.value matches 102 if data storage nexus:data database.list[{id:{b3:102b}}] run data modify storage nexus:data database.list[{id:{b3:102b}}].target.b3 set value 1b
execute if score #math_database_01 nexus.value matches 103 if data storage nexus:data database.list[{id:{b3:103b}}] run data modify storage nexus:data database.list[{id:{b3:103b}}].target.b3 set value 1b