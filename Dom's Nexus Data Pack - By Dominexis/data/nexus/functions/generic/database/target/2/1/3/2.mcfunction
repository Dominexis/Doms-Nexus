# Execute function

execute if score #math_database_01 nexus.value matches 120 if data storage nexus:data database.list[{id:{b2:120b}}] run data modify storage nexus:data database.list[{id:{b2:120b}}].target.b2 set value 1b
execute if score #math_database_01 nexus.value matches 121 if data storage nexus:data database.list[{id:{b2:121b}}] run data modify storage nexus:data database.list[{id:{b2:121b}}].target.b2 set value 1b
execute if score #math_database_01 nexus.value matches 122 if data storage nexus:data database.list[{id:{b2:122b}}] run data modify storage nexus:data database.list[{id:{b2:122b}}].target.b2 set value 1b
execute if score #math_database_01 nexus.value matches 123 if data storage nexus:data database.list[{id:{b2:123b}}] run data modify storage nexus:data database.list[{id:{b2:123b}}].target.b2 set value 1b