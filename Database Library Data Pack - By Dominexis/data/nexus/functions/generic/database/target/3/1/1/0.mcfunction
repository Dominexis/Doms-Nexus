# Execute function

execute if score #math_database_01 nexus.value matches 080 if data storage nexus:data database.list[{id:{b3:80b}}] run data modify storage nexus:data database.list[{id:{b3:80b}}].target.b3 set value 1b
execute if score #math_database_01 nexus.value matches 081 if data storage nexus:data database.list[{id:{b3:81b}}] run data modify storage nexus:data database.list[{id:{b3:81b}}].target.b3 set value 1b
execute if score #math_database_01 nexus.value matches 082 if data storage nexus:data database.list[{id:{b3:82b}}] run data modify storage nexus:data database.list[{id:{b3:82b}}].target.b3 set value 1b
execute if score #math_database_01 nexus.value matches 083 if data storage nexus:data database.list[{id:{b3:83b}}] run data modify storage nexus:data database.list[{id:{b3:83b}}].target.b3 set value 1b