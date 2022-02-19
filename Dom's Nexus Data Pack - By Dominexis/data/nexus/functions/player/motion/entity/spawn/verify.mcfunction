# Spawn entity only if the feature boolean is set to true

execute if score #feature_player_motion nexus.value matches 1 run function nexus:player/motion/entity/spawn/main







# Return error message if it is not

execute if score #feature_player_motion nexus.value matches 0 run tellraw @a ["",{"text":"[","color":"gray"},{"text":"Dom's Nexus","color":"blue","bold":true},{"text":"]","color":"gray"}," ",{"text":"Error: ","color":"dark_red"},{"text":"Player motion system cannot be used while disabled. Refer to feature booleans.","color":"red"}]