# Signify that tick function tag loaded correctly

scoreboard players set #doms_nexus_ticking_function nexus.value 1







# Execute function if Nexus installed correctly

execute if score #doms_nexus_error_boolean nexus.value matches 0 run function nexus:tick/main