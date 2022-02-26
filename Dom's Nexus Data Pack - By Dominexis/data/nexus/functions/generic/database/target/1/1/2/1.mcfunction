# Execute function

execute if score #math_database_01 nexus.value matches 100 if data storage nexus:data database.list[{id:{b1:100b}}] run data modify storage nexus:data database.list[{id:{b1:100b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 101 if data storage nexus:data database.list[{id:{b1:101b}}] run data modify storage nexus:data database.list[{id:{b1:101b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 102 if data storage nexus:data database.list[{id:{b1:102b}}] run data modify storage nexus:data database.list[{id:{b1:102b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 103 if data storage nexus:data database.list[{id:{b1:103b}}] run data modify storage nexus:data database.list[{id:{b1:103b}}].target.b1 set value 1b