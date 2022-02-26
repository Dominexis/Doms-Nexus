# Execute function

execute if score #math_database_01 nexus.value matches 048 if data storage nexus:data database.list[{id:{b0:48b}}] run data modify storage nexus:data database.list[{id:{b0:48b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 049 if data storage nexus:data database.list[{id:{b0:49b}}] run data modify storage nexus:data database.list[{id:{b0:49b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 050 if data storage nexus:data database.list[{id:{b0:50b}}] run data modify storage nexus:data database.list[{id:{b0:50b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 051 if data storage nexus:data database.list[{id:{b0:51b}}] run data modify storage nexus:data database.list[{id:{b0:51b}}].target.b0 set value 1b