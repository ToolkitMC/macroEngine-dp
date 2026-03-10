# macro:cmd/give_one — Playerya 1 adet esya ver (count parametresi gerekmez)
# INPUT: macro:input { player:"<name>", item:"<item_id>" }

$execute as @a[name=$(player),limit=1] at @s run give @s $(item) 1
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/give_one ","color":"aqua"},{"text":"$(player)","color":"white"},{"text":" → ","color":"dark_gray"},{"text":"$(item)","color":"aqua"}]
