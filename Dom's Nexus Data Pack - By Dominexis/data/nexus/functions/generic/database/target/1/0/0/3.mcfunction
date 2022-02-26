# Execute function

execute if score #math_database_01 nexus.value matches 012 if data storage nexus:data database.list[{id:{b1:12b}}] run data modify storage nexus:data database.list[{id:{b1:12b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 013 if data storage nexus:data database.list[{id:{b1:13b}}] run data modify storage nexus:data database.list[{id:{b1:13b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 014 if data storage nexus:data database.list[{id:{b1:14b}}] run data modify storage nexus:data database.list[{id:{b1:14b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 015 if data storage nexus:data database.list[{id:{b1:15b}}] run data modify storage nexus:data database.list[{id:{b1:15b}}].target.b1 set value 1b