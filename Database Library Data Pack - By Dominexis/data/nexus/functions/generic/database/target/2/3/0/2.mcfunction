# Execute function

execute if score #math_database_01 nexus.value matches 200 if data storage nexus:data database.list[{id:{b2:-56b}}] run data modify storage nexus:data database.list[{id:{b2:-56b}}].target.b2 set value 1b
execute if score #math_database_01 nexus.value matches 201 if data storage nexus:data database.list[{id:{b2:-55b}}] run data modify storage nexus:data database.list[{id:{b2:-55b}}].target.b2 set value 1b
execute if score #math_database_01 nexus.value matches 202 if data storage nexus:data database.list[{id:{b2:-54b}}] run data modify storage nexus:data database.list[{id:{b2:-54b}}].target.b2 set value 1b
execute if score #math_database_01 nexus.value matches 203 if data storage nexus:data database.list[{id:{b2:-53b}}] run data modify storage nexus:data database.list[{id:{b2:-53b}}].target.b2 set value 1b