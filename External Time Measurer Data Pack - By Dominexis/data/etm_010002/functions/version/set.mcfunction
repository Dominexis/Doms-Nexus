# Set version if lower than current version

scoreboard players set #version nexus.value 010002
execute if score #etm_version nexus.value < #version nexus.value run scoreboard players operation #etm_version nexus.value = #version nexus.value







# Schedule test function

schedule function etm_010002:version/test 1t replace