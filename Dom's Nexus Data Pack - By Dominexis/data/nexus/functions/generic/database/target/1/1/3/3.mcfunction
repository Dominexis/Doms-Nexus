# Execute function

execute if score #math_database_01 nexus.value matches 124 if data storage nexus:data database.list[{id:{b1:124b}}] run data modify storage nexus:data database.list[{id:{b1:124b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 125 if data storage nexus:data database.list[{id:{b1:125b}}] run data modify storage nexus:data database.list[{id:{b1:125b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 126 if data storage nexus:data database.list[{id:{b1:126b}}] run data modify storage nexus:data database.list[{id:{b1:126b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 127 if data storage nexus:data database.list[{id:{b1:127b}}] run data modify storage nexus:data database.list[{id:{b1:127b}}].target.b1 set value 1b