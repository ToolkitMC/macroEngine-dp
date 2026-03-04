# macro:cmd/locate_structure — Belirtvian playernun konumundan yapi ara
# INPUT: macro:input { player:"<name>", structure:"<structure_id>" }
# EXAMPLE: structure:"minecraft:village_plains"
# Sonuc sohbete writedirilir; output capture yoktur (vanilla siniri)

$execute as @a[name=$(player),limit=1] at @s run locate structure $(structure)
