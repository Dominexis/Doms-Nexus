# Execute function

execute if score #math_database_01 nexus.value matches 064 if data storage nexus:data database.list[{id:{b1:64b}}] run data modify storage nexus:data database.list[{id:{b1:64b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 065 if data storage nexus:data database.list[{id:{b1:65b}}] run data modify storage nexus:data database.list[{id:{b1:65b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 066 if data storage nexus:data database.list[{id:{b1:66b}}] run data modify storage nexus:data database.list[{id:{b1:66b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 067 if data storage nexus:data database.list[{id:{b1:67b}}] run data modify storage nexus:data database.list[{id:{b1:67b}}].target.b1 set value 1b