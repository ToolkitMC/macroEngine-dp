# macro:cmd/attribute_set — Playernun attribute base valueini set
# INPUT: macro:input { player:"<name>", attribute:"<attribute_id>", value:<float> }
# EXAMPLE: attribute:"minecraft:generic.max_health", value:40 → 20 kalp max

$execute as @a[name=$(player),limit=1] run attribute @s $(attribute) base set $(value)
