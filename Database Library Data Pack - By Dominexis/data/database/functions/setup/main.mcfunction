# Run installation function

execute if score #update_installation_boolean nexus.value matches 1 run function database:setup/install







# Increment module count

scoreboard players add #doms_nexus_module_count nexus.value 1