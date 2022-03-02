# Set version if lower than current version

scoreboard players set #version nexus.value 010005
execute if score #template_module_version nexus.value < #version nexus.value run scoreboard players operation #template_module_version nexus.value = #version nexus.value







# Schedule test function

schedule function temp_010005:version/test 1t replace