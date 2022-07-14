# Extract NBT

function nexus:entity/generic/data/extract/objective







# Apply only if current effect has an equal or greater level than the old one

execute store result score #absorption_level nexus.value run data get storage nexus:data tag.ActiveEffects[{Id:22}].Amplifier
execute if score #absorption_level nexus.value >= @s nexus.abs_level run function nexus:player/health/absorption/add/apply







# Remove absorption effect

effect clear @s absorption