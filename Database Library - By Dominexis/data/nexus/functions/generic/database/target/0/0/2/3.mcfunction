# Execute function

execute if score #math_database_01 nexus.value matches 044 if data storage nexus:data database.list[{id:{b0:44b}}] run data modify storage nexus:data database.list[{id:{b0:44b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 045 if data storage nexus:data database.list[{id:{b0:45b}}] run data modify storage nexus:data database.list[{id:{b0:45b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 046 if data storage nexus:data database.list[{id:{b0:46b}}] run data modify storage nexus:data database.list[{id:{b0:46b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 047 if data storage nexus:data database.list[{id:{b0:47b}}] run data modify storage nexus:data database.list[{id:{b0:47b}}].target.b0 set value 1b