# Get data from database

function nexus:generic/database/target
function nexus:generic/database/get







# Remove relevant slots

data remove storage nexus:data database.tag.Inventory[{Slot: 100b}]
data remove storage nexus:data database.tag.Inventory[{Slot: 101b}]
data remove storage nexus:data database.tag.Inventory[{Slot: 102b}]
data remove storage nexus:data database.tag.Inventory[{Slot: 103b}]







# Append to tag from inventory

data modify storage nexus:data tag.Inventory set from entity @s Inventory

data modify storage nexus:data database.tag.Inventory append from storage nexus:data tag.Inventory[{Slot: 100b}]
data modify storage nexus:data database.tag.Inventory append from storage nexus:data tag.Inventory[{Slot: 101b}]
data modify storage nexus:data database.tag.Inventory append from storage nexus:data tag.Inventory[{Slot: 102b}]
data modify storage nexus:data database.tag.Inventory append from storage nexus:data tag.Inventory[{Slot: 103b}]







# Push data to database

function nexus:generic/database/set