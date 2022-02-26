# Set installed boolean

scoreboard players set #doms_nexus_installed_boolean nexus.value 1







# Setup Nexus if no errors were found

execute if score #doms_nexus_error_boolean nexus.value matches 0 run function nexus:setup/main







# Return error if there were errors

execute if score #doms_nexus_error_boolean nexus.value matches 1 run tellraw @a ["",{"text":"[","color":"gray"},{"text":"Dom's Nexus","color":"blue"},{"text":"]","color":"gray"}," ",{"text":"Nexus and modules were unable to install.","color":"gray"}]