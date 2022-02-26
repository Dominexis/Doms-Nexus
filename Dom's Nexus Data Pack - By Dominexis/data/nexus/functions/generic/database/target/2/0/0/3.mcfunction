# Execute function

execute if score #math_database_01 nexus.value matches 012 if data storage nexus:data database.list[{id:{b2:12b}}] run data modify storage nexus:data database.list[{id:{b2:12b}}].target.b2 set value 1b
execute if score #math_database_01 nexus.value matches 013 if data storage nexus:data database.list[{id:{b2:13b}}] run data modify storage nexus:data database.list[{id:{b2:13b}}].target.b2 set value 1b
execute if score #math_database_01 nexus.value matches 014 if data storage nexus:data database.list[{id:{b2:14b}}] run data modify storage nexus:data database.list[{id:{b2:14b}}].target.b2 set value 1b
execute if score #math_database_01 nexus.value matches 015 if data storage nexus:data database.list[{id:{b2:15b}}] run data modify storage nexus:data database.list[{id:{b2:15b}}].target.b2 set value 1b