# Create scoreboard objective

scoreboard objectives add nexus.value dummy







# Set values

scoreboard players set #doms_nexus_verification_boolean nexus.value 0
scoreboard players set #doms_nexus_error_boolean nexus.value 0
scoreboard players set #doms_nexus_version nexus.value 0







# Run module version verification functions

function #nexus_010807:version/initialize







# Schedule set function

schedule function nexus_010807:version/set 1t replace