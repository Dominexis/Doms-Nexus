# Set target

scoreboard players operation #yaw nexus.value = @s nexus.poi_yaw
scoreboard players operation #pitch nexus.value = @s nexus.poi_pitch







# Modify rotation

scoreboard players set #rotation_acceleration nexus.value 20
function temp:entity/spider_brain/mode/generic/rotation







# Apply motion

function temp:entity/spider_brain/mode/generic/motion







# Manage animation

scoreboard players remove @s nexus.animation 1
execute if score @s nexus.animation matches ..0 run function temp:entity/spider_brain/mode/generic/animation