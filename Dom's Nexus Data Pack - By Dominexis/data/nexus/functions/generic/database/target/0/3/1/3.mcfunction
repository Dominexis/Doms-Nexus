# Execute function

execute if score #math_database_01 nexus.value matches 220 if data storage nexus:data database.list[{id:{b0:-36b}}] run data modify storage nexus:data database.list[{id:{b0:-36b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 221 if data storage nexus:data database.list[{id:{b0:-35b}}] run data modify storage nexus:data database.list[{id:{b0:-35b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 222 if data storage nexus:data database.list[{id:{b0:-34b}}] run data modify storage nexus:data database.list[{id:{b0:-34b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 223 if data storage nexus:data database.list[{id:{b0:-33b}}] run data modify storage nexus:data database.list[{id:{b0:-33b}}].target.b0 set value 1b