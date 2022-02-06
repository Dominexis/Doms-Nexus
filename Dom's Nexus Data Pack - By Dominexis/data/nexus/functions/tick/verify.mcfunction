# Signify that tick function tag loaded correctly

scoreboard players set #doms_nexus_ticking_function nexus.value 1







# Execute function if data pack is installed

execute if score #doms_nexus_verification_boolean nexus.value matches 1 run function nexus:tick/main