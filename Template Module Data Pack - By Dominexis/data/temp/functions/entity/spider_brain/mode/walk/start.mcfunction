# Assign point of interest

scoreboard players operation @s nexus.poi_yaw = @s nexus.yaw
scoreboard players operation @s nexus.poi_pitch = @s nexus.pitch







# Modify goal rotation by a random amount

function temp:entity/spider_brain/mode/generic/random_rotation







# Set random animation value

scoreboard players set #input nexus.value 30
function nexus:generic/rng/lcg
scoreboard players operation @s nexus.animation = #output nexus.value
scoreboard players add @s nexus.animation 20







# Manage animations

function temp:entity/spider_brain/animate/idle/stop
function temp:entity/spider_brain/animate/walk/start







# Set mode value

scoreboard players set #mode nexus.value 1