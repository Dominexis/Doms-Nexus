# Execute function

execute if score #math_database_01 nexus.value matches 064 if data storage nexus:data database.list[{id:{b0:64b}}] run data modify storage nexus:data database.list[{id:{b0:64b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 065 if data storage nexus:data database.list[{id:{b0:65b}}] run data modify storage nexus:data database.list[{id:{b0:65b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 066 if data storage nexus:data database.list[{id:{b0:66b}}] run data modify storage nexus:data database.list[{id:{b0:66b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 067 if data storage nexus:data database.list[{id:{b0:67b}}] run data modify storage nexus:data database.list[{id:{b0:67b}}].target.b0 set value 1b