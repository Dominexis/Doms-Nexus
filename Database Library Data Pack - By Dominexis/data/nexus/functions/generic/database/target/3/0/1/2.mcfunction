# Execute function

execute if score #math_database_01 nexus.value matches 024 if data storage nexus:data database.list[{id:{b3:24b}}] run data modify storage nexus:data database.list[{id:{b3:24b}}].target.b3 set value 1b
execute if score #math_database_01 nexus.value matches 025 if data storage nexus:data database.list[{id:{b3:25b}}] run data modify storage nexus:data database.list[{id:{b3:25b}}].target.b3 set value 1b
execute if score #math_database_01 nexus.value matches 026 if data storage nexus:data database.list[{id:{b3:26b}}] run data modify storage nexus:data database.list[{id:{b3:26b}}].target.b3 set value 1b
execute if score #math_database_01 nexus.value matches 027 if data storage nexus:data database.list[{id:{b3:27b}}] run data modify storage nexus:data database.list[{id:{b3:27b}}].target.b3 set value 1b