# Execute function

execute if score #math_database_01 nexus.value matches 120 if data storage nexus:data database.list[{id:{b1:120b}}] run data modify storage nexus:data database.list[{id:{b1:120b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 121 if data storage nexus:data database.list[{id:{b1:121b}}] run data modify storage nexus:data database.list[{id:{b1:121b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 122 if data storage nexus:data database.list[{id:{b1:122b}}] run data modify storage nexus:data database.list[{id:{b1:122b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 123 if data storage nexus:data database.list[{id:{b1:123b}}] run data modify storage nexus:data database.list[{id:{b1:123b}}].target.b1 set value 1b