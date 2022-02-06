# Throw error if version does not match

scoreboard players set #version nexus.value 010000
execute unless score #etm_version nexus.value = #version nexus.value run scoreboard players set #doms_nexus_error_boolean nexus.value 1
execute unless score #etm_version nexus.value = #version nexus.value run function etm_010000:error/duplicate_module