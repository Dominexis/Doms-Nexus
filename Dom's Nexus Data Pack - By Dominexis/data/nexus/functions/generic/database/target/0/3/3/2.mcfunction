# Execute function

execute if score #math_database_01 nexus.value matches 248 if data storage nexus:data database.list[{id:{b0:-8b}}] run data modify storage nexus:data database.list[{id:{b0:-8b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 249 if data storage nexus:data database.list[{id:{b0:-7b}}] run data modify storage nexus:data database.list[{id:{b0:-7b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 250 if data storage nexus:data database.list[{id:{b0:-6b}}] run data modify storage nexus:data database.list[{id:{b0:-6b}}].target.b0 set value 1b
execute if score #math_database_01 nexus.value matches 251 if data storage nexus:data database.list[{id:{b0:-5b}}] run data modify storage nexus:data database.list[{id:{b0:-5b}}].target.b0 set value 1b