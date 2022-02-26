# Execute function

execute if score #math_database_01 nexus.value matches 128 if data storage nexus:data database.list[{id:{b3:-128b}}] run data modify storage nexus:data database.list[{id:{b3:-128b}}].target.b3 set value 1b
execute if score #math_database_01 nexus.value matches 129 if data storage nexus:data database.list[{id:{b3:-127b}}] run data modify storage nexus:data database.list[{id:{b3:-127b}}].target.b3 set value 1b
execute if score #math_database_01 nexus.value matches 130 if data storage nexus:data database.list[{id:{b3:-126b}}] run data modify storage nexus:data database.list[{id:{b3:-126b}}].target.b3 set value 1b
execute if score #math_database_01 nexus.value matches 131 if data storage nexus:data database.list[{id:{b3:-125b}}] run data modify storage nexus:data database.list[{id:{b3:-125b}}].target.b3 set value 1b