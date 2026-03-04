# macro:cmd/attribute_get — Playernun attribute valueini read
# INPUT: macro:input { player:"<name>", attribute:"<attribute_id>" }
# OUTPUT: macro:output { result:<float> }
# EXAMPLE attribute: "minecraft:generic.max_health", "minecraft:generic.movement_speed"

$execute store result storage macro:output result double 1 run attribute @a[name=$(player),limit=1] $(attribute) get
