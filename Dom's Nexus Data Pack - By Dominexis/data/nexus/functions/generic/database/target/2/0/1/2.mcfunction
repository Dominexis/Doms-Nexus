# Execute function

execute if score #math_database_01 nexus.value matches 024 if data storage nexus:data database.list[{id:{b2:24b}}] run data modify storage nexus:data database.list[{id:{b2:24b}}].target.b2 set value 1b
execute if score #math_database_01 nexus.value matches 025 if data storage nexus:data database.list[{id:{b2:25b}}] run data modify storage nexus:data database.list[{id:{b2:25b}}].target.b2 set value 1b
execute if score #math_database_01 nexus.value matches 026 if data storage nexus:data database.list[{id:{b2:26b}}] run data modify storage nexus:data database.list[{id:{b2:26b}}].target.b2 set value 1b
execute if score #math_database_01 nexus.value matches 027 if data storage nexus:data database.list[{id:{b2:27b}}] run data modify storage nexus:data database.list[{id:{b2:27b}}].target.b2 set value 1b