# Get data from database

function nexus:generic/database/target
function nexus:generic/database/get







# Push inventory contents

data modify storage nexus:data database.tag.Inventory set from entity @s Inventory







# Push data to database

function nexus:generic/database/set