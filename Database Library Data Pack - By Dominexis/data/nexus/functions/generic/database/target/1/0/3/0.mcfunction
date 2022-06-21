# Execute function

execute if score #math_database_01 nexus.value matches 048 if data storage nexus:data database.list[{id:{b1:48b}}] run data modify storage nexus:data database.list[{id:{b1:48b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 049 if data storage nexus:data database.list[{id:{b1:49b}}] run data modify storage nexus:data database.list[{id:{b1:49b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 050 if data storage nexus:data database.list[{id:{b1:50b}}] run data modify storage nexus:data database.list[{id:{b1:50b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 051 if data storage nexus:data database.list[{id:{b1:51b}}] run data modify storage nexus:data database.list[{id:{b1:51b}}].target.b1 set value 1b