# Execute function

execute if score #math_database_01 nexus.value matches 128 if data storage nexus:data database.list[{id:{b2:-128b}}] run data modify storage nexus:data database.list[{id:{b2:-128b}}].target.b2 set value 1b
execute if score #math_database_01 nexus.value matches 129 if data storage nexus:data database.list[{id:{b2:-127b}}] run data modify storage nexus:data database.list[{id:{b2:-127b}}].target.b2 set value 1b
execute if score #math_database_01 nexus.value matches 130 if data storage nexus:data database.list[{id:{b2:-126b}}] run data modify storage nexus:data database.list[{id:{b2:-126b}}].target.b2 set value 1b
execute if score #math_database_01 nexus.value matches 131 if data storage nexus:data database.list[{id:{b2:-125b}}] run data modify storage nexus:data database.list[{id:{b2:-125b}}].target.b2 set value 1b