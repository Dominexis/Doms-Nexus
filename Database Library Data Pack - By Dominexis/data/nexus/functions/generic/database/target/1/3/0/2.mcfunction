# Execute function

execute if score #math_database_01 nexus.value matches 200 if data storage nexus:data database.list[{id:{b1:-56b}}] run data modify storage nexus:data database.list[{id:{b1:-56b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 201 if data storage nexus:data database.list[{id:{b1:-55b}}] run data modify storage nexus:data database.list[{id:{b1:-55b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 202 if data storage nexus:data database.list[{id:{b1:-54b}}] run data modify storage nexus:data database.list[{id:{b1:-54b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 203 if data storage nexus:data database.list[{id:{b1:-53b}}] run data modify storage nexus:data database.list[{id:{b1:-53b}}].target.b1 set value 1b