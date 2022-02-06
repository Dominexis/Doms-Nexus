# Set version if lower than current version

scoreboard players set #version nexus.value 010000
execute if score #template_module_version nexus.value < #version nexus.value run scoreboard players operation #template_module_version nexus.value = #version nexus.value







# Schedule test function

schedule function temp_010000:version/test 1t replace