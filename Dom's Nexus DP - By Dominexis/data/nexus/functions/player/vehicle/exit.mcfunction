# Manage tag and team

tag @s remove nexus.player.vehicle
team leave @s[team=nexus.vehicle]







# Remove luck effect from seat

scoreboard players operation #local nexus.id = @s nexus.vehicle
scoreboard players operation #local nexus.seat = @s nexus.seat
execute as @e[type=#nexus:generic/vehicle,tag=nexus.entity.vehicle] if score @s nexus.id = #local nexus.id if score @s nexus.seat = #local nexus.seat run effect clear @s luck







# Run vehicle function

function #nexus:player/vehicle/exit







# Reset vehicle ID

scoreboard players set @s nexus.vehicle 0
scoreboard players set @s nexus.seat 0