# Execute function

execute if score #math_database_01 nexus.value matches 024 if data storage nexus:data database.list[{id:{b0:24b}}] run data modify storage nexus:data database.list[{id:{b0:24b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 025 if data storage nexus:data database.list[{id:{b0:25b}}] run data modify storage nexus:data database.list[{id:{b0:25b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 026 if data storage nexus:data database.list[{id:{b0:26b}}] run data modify storage nexus:data database.list[{id:{b0:26b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 027 if data storage nexus:data database.list[{id:{b0:27b}}] run data modify storage nexus:data database.list[{id:{b0:27b}}].target.b0 set value 1b