# Throw error if correct Nexus version is not loaded

execute store result score #module_count nexus.value if data storage nexus:data modules[{id:"doms_nexus",version:"1.9.0"}]
execute if score #module_count nexus.value matches 0 run scoreboard players set #doms_nexus_error_boolean nexus.value 1
execute if score #module_count nexus.value matches 0 run tellraw @a ["",{"text":"[","color":"gray"},{"text":"Function Tree Library","color":"gold"},{"text":"]","color":"gray"}," ",{"text":"Error: ","color":"dark_red"},{"text":"Dom's Nexus","color":"blue","underlined":true,"hoverEvent":{"action":"show_text","value":[{"text":"Dom's Nexus","color":"blue"},{"text":" on ","color":"gray"},{"text":"Planet Minecraft","color":"dark_green"}]},"clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-pack/dom-s-nexus/"}},{"text":" 1.9.0","color":"gold"},{"text":" is not installed.","color":"red"}]







# Throw error if multiple copies of the Nexus are loaded

execute store result score #module_count nexus.value if data storage nexus:data modules[{id:"doms_nexus"}]
execute if score #module_count nexus.value matches 2.. run scoreboard players set #doms_nexus_error_boolean nexus.value 1
execute if score #module_count nexus.value matches 2.. run tellraw @a ["",{"text":"[","color":"gray"},{"text":"Function Tree Library","color":"gold"},{"text":"]","color":"gray"}," ",{"text":"Error: ","color":"dark_red"},{"text":"Multiple copies of ","color":"red"},{"text":"Dom's Nexus","color":"blue"},{"text":" exist. Remove all outdated versions.","color":"red"}]







# Throw error if multiple copies of the module are loaded

execute store result score #module_count nexus.value if data storage nexus:data modules[{id:"function_tree_library"}]
execute if score #module_count nexus.value matches 2.. run scoreboard players set #doms_nexus_error_boolean nexus.value 1
execute if score #module_count nexus.value matches 2.. run tellraw @a ["",{"text":"[","color":"gray"},{"text":"Function Tree Library","color":"gold"},{"text":"]","color":"gray"}," ",{"text":"Error: ","color":"dark_red"},{"text":"Multiple copies of ","color":"red"},{"text":"Function Tree Library","color":"gold"},{"text":" exist. Remove all outdated versions.","color":"red"}]