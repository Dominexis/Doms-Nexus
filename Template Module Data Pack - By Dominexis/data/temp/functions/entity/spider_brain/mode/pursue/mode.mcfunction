# Start walk mode if there is no one nearby

execute unless entity @a[distance=..40,gamemode=!spectator] run function temp:entity/spider_brain/mode/walk/start







# Manage health

function temp:entity/spider_brain/mode/generic/health/main