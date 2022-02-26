# Execute function

execute if score #math_database_01 nexus.value matches 080 if data storage nexus:data database.list[{id:{b1:80b}}] run data modify storage nexus:data database.list[{id:{b1:80b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 081 if data storage nexus:data database.list[{id:{b1:81b}}] run data modify storage nexus:data database.list[{id:{b1:81b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 082 if data storage nexus:data database.list[{id:{b1:82b}}] run data modify storage nexus:data database.list[{id:{b1:82b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 083 if data storage nexus:data database.list[{id:{b1:83b}}] run data modify storage nexus:data database.list[{id:{b1:83b}}].target.b1 set value 1b