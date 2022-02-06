# Extract NBT

execute unless score @s nexus.nbt_ticks = #global nexus.ticks run function nexus:entity/generic/data/extract/nbt







# Apply only if current effect has an equal or greater level than the old one

execute store result score #absorption_level nexus.value run data get storage nexus:data tag.ActiveEffects[{Id:22b}].Amplifier
execute if score #absorption_level nexus.value >= @s nexus.abs_level run function nexus:player/health/absorption/add/apply







# Remove absorption effect

effect clear @s absorption