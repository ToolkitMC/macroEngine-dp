# macro:cmd/effect_giand — Playerya efekt ver
# INPUT: macro:input { player:"<name>", effect:"<effect_id>", duration:<tick>, amplifier:<int> }
# EXAMPLE: effect:"minecraft:speed", duration:200, amplifier:1

$execute as @a[name=$(player),limit=1] at @s run effect give @s $(effect) $(duration) $(amplifier) true
