# Execute function

execute if score #math_database_01 nexus.value matches 200 if data storage nexus:data database.list[{id:{b3:-56b}}] run data modify storage nexus:data database.list[{id:{b3:-56b}}].target.b3 set value 1b
execute if score #math_database_01 nexus.value matches 201 if data storage nexus:data database.list[{id:{b3:-55b}}] run data modify storage nexus:data database.list[{id:{b3:-55b}}].target.b3 set value 1b
execute if score #math_database_01 nexus.value matches 202 if data storage nexus:data database.list[{id:{b3:-54b}}] run data modify storage nexus:data database.list[{id:{b3:-54b}}].target.b3 set value 1b
execute if score #math_database_01 nexus.value matches 203 if data storage nexus:data database.list[{id:{b3:-53b}}] run data modify storage nexus:data database.list[{id:{b3:-53b}}].target.b3 set value 1b