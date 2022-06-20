# Create scoreboard objective

scoreboard objectives add nexus.value dummy







# Initialize scores

scoreboard players set #doms_nexus_error_boolean nexus.value 0







# Verify modules

data modify storage nexus:data modules set value []
function #nexus:verify/version
function #nexus:verify/check







# Setup Nexus

execute if score #doms_nexus_error_boolean nexus.value matches 1 run tellraw @a ["",{"text":"[","color":"gray"},{"text":"Dom's Nexus","color":"blue"},{"text":"]","color":"gray"}," ",{"text":"Nexus and modules were unable to install.","color":"red"}]
execute if score #doms_nexus_error_boolean nexus.value matches 0 run function nexus:setup/main