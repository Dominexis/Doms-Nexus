# Execute function

execute if score #math_database_01 nexus.value matches 212 if data storage nexus:data database.list[{id:{b1:-44b}}] run data modify storage nexus:data database.list[{id:{b1:-44b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 213 if data storage nexus:data database.list[{id:{b1:-43b}}] run data modify storage nexus:data database.list[{id:{b1:-43b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 214 if data storage nexus:data database.list[{id:{b1:-42b}}] run data modify storage nexus:data database.list[{id:{b1:-42b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 215 if data storage nexus:data database.list[{id:{b1:-41b}}] run data modify storage nexus:data database.list[{id:{b1:-41b}}].target.b1 set value 1b