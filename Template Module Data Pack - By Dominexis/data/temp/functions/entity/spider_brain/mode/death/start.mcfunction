# Set animation value

scoreboard players set @s nexus.animation 20







# Disable pathfinder

tag @s add temp.entity.property.pathfinder_disabled







# Manage animations

function temp:entity/spider_brain/animate/idle/stop
function temp:entity/spider_brain/animate/walk/stop
function temp:entity/spider_brain/animate/death/start







# Set mode value

scoreboard players set #mode nexus.value 3