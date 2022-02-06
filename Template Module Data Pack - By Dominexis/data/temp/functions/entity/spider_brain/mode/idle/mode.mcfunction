# Start pursue mode if there is a player nearby

execute if entity @a[distance=..32,gamemode=!spectator] run function temp:entity/spider_brain/mode/pursue/start







# Manage health

function temp:entity/spider_brain/mode/generic/health/main