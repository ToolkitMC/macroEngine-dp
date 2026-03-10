# macro:cmd/locate_structure — Belirtvian playernun konumundan yapi ara
# INPUT: macro:input { player:"<name>", structure:"<structure_id>" }
# EXAMPLE: structure:"minecraft:village_plains"
# Sonuc sohbete writedirilir; output capture yoktur (vanilla siniri)

$execute as @a[name=$(player),limit=1] at @s run locate structure $(structure)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/locate_structure ","color":"aqua"},{"text":"$(player)","color":"white"},{"text":" → ","color":"dark_gray"},{"text":"$(structure)","color":"aqua"}]
