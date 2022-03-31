# Throw error if version does not match

scoreboard players set #version nexus.value 010007
execute unless score #template_module_version nexus.value = #version nexus.value run scoreboard players set #doms_nexus_error_boolean nexus.value 1
execute unless score #template_module_version nexus.value = #version nexus.value run function temp_010007:error/duplicate_module