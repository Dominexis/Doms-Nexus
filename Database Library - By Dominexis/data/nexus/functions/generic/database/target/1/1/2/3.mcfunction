# Execute function

execute if score #math_database_01 nexus.value matches 108 if data storage nexus:data database.list[{id:{b1:108b}}] run data modify storage nexus:data database.list[{id:{b1:108b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 109 if data storage nexus:data database.list[{id:{b1:109b}}] run data modify storage nexus:data database.list[{id:{b1:109b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 110 if data storage nexus:data database.list[{id:{b1:110b}}] run data modify storage nexus:data database.list[{id:{b1:110b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 111 if data storage nexus:data database.list[{id:{b1:111b}}] run data modify storage nexus:data database.list[{id:{b1:111b}}].target.b1 set value 1b