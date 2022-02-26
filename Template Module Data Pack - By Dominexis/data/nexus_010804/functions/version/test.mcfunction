# Throw error if version does not match

scoreboard players set #version nexus.value 010804
execute unless score #doms_nexus_version nexus.value = #version nexus.value run scoreboard players set #doms_nexus_error_boolean nexus.value 1
execute unless score #doms_nexus_version nexus.value = #version nexus.value run tellraw @a ["",{"text":"[","color":"gray"},{"text":"Dom's Nexus","color":"blue"},{"text":"]","color":"gray"}," ",{"text":"Error: ","color":"dark_red"},{"text":"Conflicting Nexus versions. Please correct outdated modules.","color":"red"}]
execute unless score #doms_nexus_version nexus.value = #version nexus.value run function #nexus_010804:error/outdated_nexus







# Schedule setup function

scoreboard players set #doms_nexus_installed_boolean nexus.value 0

schedule function nexus:setup/verify 1t replace
schedule function nexus_010804:version/verify 2t replace