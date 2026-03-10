# macro:cmd/clear_item — Playerdan belirli esyayi remove
# INPUT: macro:input { player:"<name>", item:"<item_id>", count:<int> }

$execute as @a[name=$(player),limit=1] at @s run clear @s $(item) $(count)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/clear_item ","color":"aqua"},{"text":"$(player)","color":"white"},{"text":" → ","color":"dark_gray"},{"text":"$(item)","color":"aqua"}]
