# Execute function

execute if score #math_database_01 nexus.value matches 192 if data storage nexus:data database.list[{id:{b0:-64b}}] run data modify storage nexus:data database.list[{id:{b0:-64b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 193 if data storage nexus:data database.list[{id:{b0:-63b}}] run data modify storage nexus:data database.list[{id:{b0:-63b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 194 if data storage nexus:data database.list[{id:{b0:-62b}}] run data modify storage nexus:data database.list[{id:{b0:-62b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 195 if data storage nexus:data database.list[{id:{b0:-61b}}] run data modify storage nexus:data database.list[{id:{b0:-61b}}].target.b0 set value 1b