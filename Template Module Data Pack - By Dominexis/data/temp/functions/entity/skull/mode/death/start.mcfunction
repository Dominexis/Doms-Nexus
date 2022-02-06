# Set mode value

scoreboard players set #mode nexus.value 2







# Set animation value

scoreboard players set @s nexus.animation 10







# Start death animation

tag @s remove temp.entity.animate.damage

function temp:entity/skull/animate/death/start