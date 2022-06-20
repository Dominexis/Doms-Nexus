# Execute function

execute if score #math_database_01 nexus.value matches 092 if data storage nexus:data database.list[{id:{b1:92b}}] run data modify storage nexus:data database.list[{id:{b1:92b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 093 if data storage nexus:data database.list[{id:{b1:93b}}] run data modify storage nexus:data database.list[{id:{b1:93b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 094 if data storage nexus:data database.list[{id:{b1:94b}}] run data modify storage nexus:data database.list[{id:{b1:94b}}].target.b1 set value 1b
execute if score #math_database_01 nexus.value matches 095 if data storage nexus:data database.list[{id:{b1:95b}}] run data modify storage nexus:data database.list[{id:{b1:95b}}].target.b1 set value 1b