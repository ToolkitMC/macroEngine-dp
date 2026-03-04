# macro:cmd/damage — Playerya hasar ver
# INPUT: macro:input { player:"<name>", amount:<float>, type:"<damage_type>" }
# EXAMPLE type: "minecraft:generic", "minecraft:fall", "minecraft:magic"

$execute as @a[name=$(player),limit=1] at @s run damage @s $(amount) $(type)
