# macro:cmd/damage — Playerya hasar ver
# INPUT: macro:input { player:"<name>", amount:<float>, type:"<damage_type>" }
# EXAMPLE type: "minecraft:generic", "minecraft:fall", "minecraft:magic"

$execute as @a[name=$(player),limit=1] at @s run damage @s $(amount) $(type)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/damage ","color":"aqua"},{"text":"$(player)","color":"white"},{"text":" → ","color":"dark_gray"},{"text":"$(type)","color":"aqua"}]
