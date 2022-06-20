# Execute function

execute if score #math_database_01 nexus.value matches 100 if data storage nexus:data database.list[{id:{b0:100b}}] run data modify storage nexus:data database.list[{id:{b0:100b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 101 if data storage nexus:data database.list[{id:{b0:101b}}] run data modify storage nexus:data database.list[{id:{b0:101b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 102 if data storage nexus:data database.list[{id:{b0:102b}}] run data modify storage nexus:data database.list[{id:{b0:102b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 103 if data storage nexus:data database.list[{id:{b0:103b}}] run data modify storage nexus:data database.list[{id:{b0:103b}}].target.b0 set value 1b