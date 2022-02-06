# Push scores

scoreboard players operation #local nexus.id = @s nexus.id
scoreboard players operation #local nexus.seat = @s nexus.seat







# Set boolean to true if player should be assigned to team

execute if entity @s[tag=nexus.entity.vehicle.team] run scoreboard players set #boolean nexus.value 1







# Give luck effect

effect give @s luck 1000000 0 true







# Run function

function #nexus:player/vehicle/enter