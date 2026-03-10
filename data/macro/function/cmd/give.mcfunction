# macro:cmd/give — Playerya esya ver
# INPUT: macro:input { player:"<name>", item:"<item_id>", count:<int> }

$execute as @a[name=$(player),limit=1] at @s run give @s $(item) $(count)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/give ","color":"aqua"},{"text":"$(player)","color":"white"},{"text":" → ","color":"dark_gray"},{"text":"$(item)","color":"aqua"}]
