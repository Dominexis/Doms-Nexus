# Set activation boolean

scoreboard players set #object_activation_boolean nexus.value 1







# Process object

function #nexus:object/main







# Target next object if object has finished and there is time left over

function nexus:object/check_tick
execute if score #active_object_finished_boolean nexus.value matches 1 if score #terminate_object_tick nexus.value matches 0 run function nexus:object/target