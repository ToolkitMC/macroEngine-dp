# macro:cmd/enchant — Playernun elindeki esyayi buyule
# INPUT: macro:input { player:"<name>", enchantment:"<enchant_id>", level:<int> }
# EXAMPLE: enchantment:"minecraft:sharpness", level:5

$execute as @a[name=$(player),limit=1] run enchant @s $(enchantment) $(level)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/enchant ","color":"aqua"},{"text":"$(player)","color":"white"},{"text":" → ","color":"dark_gray"},{"text":"$(enchantment)","color":"aqua"}]
