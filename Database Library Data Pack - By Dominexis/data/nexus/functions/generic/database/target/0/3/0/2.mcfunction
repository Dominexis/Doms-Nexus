# Execute function

execute if score #math_database_01 nexus.value matches 200 if data storage nexus:data database.list[{id:{b0:-56b}}] run data modify storage nexus:data database.list[{id:{b0:-56b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 201 if data storage nexus:data database.list[{id:{b0:-55b}}] run data modify storage nexus:data database.list[{id:{b0:-55b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 202 if data storage nexus:data database.list[{id:{b0:-54b}}] run data modify storage nexus:data database.list[{id:{b0:-54b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 203 if data storage nexus:data database.list[{id:{b0:-53b}}] run data modify storage nexus:data database.list[{id:{b0:-53b}}].target.b0 set value 1b