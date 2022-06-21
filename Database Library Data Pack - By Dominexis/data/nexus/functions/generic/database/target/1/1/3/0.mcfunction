# Execute function

execute if score #math_database_01 nexus.value matches 112 if data storage nexus:data database.list[{id:{b1:112b}}] run data modify storage nexus:data database.list[{id:{b1:112b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 113 if data storage nexus:data database.list[{id:{b1:113b}}] run data modify storage nexus:data database.list[{id:{b1:113b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 114 if data storage nexus:data database.list[{id:{b1:114b}}] run data modify storage nexus:data database.list[{id:{b1:114b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 115 if data storage nexus:data database.list[{id:{b1:115b}}] run data modify storage nexus:data database.list[{id:{b1:115b}}].target.b1 set value 1b