# Throw error if multiple copies of the Nexus are loaded

execute store result score #module_count nexus.value if data storage nexus:data modules[{id:"doms_nexus"}]
execute if score #module_count nexus.value matches 2.. run scoreboard players set #doms_nexus_error_boolean nexus.value 1
execute if score #module_count nexus.value matches 2.. run tellraw @a ["",{"text":"[","color":"gray"},{"text":"Dom's Nexus","color":"blue"},{"text":"]","color":"gray"}," ",{"text":"Error: ","color":"dark_red"},{"text":"Multiple copies of ","color":"red"},{"text":"Dom's Nexus","color":"blue"},{"text":" exist. Remove all outdated versions.","color":"red"}]