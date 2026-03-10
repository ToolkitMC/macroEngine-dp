# macro:cmd/xp_add — Playerya XP add
# INPUT: macro:input { player:"<name>", amount:<int>, type:"points"|"levels" }
# type "points" → ham XP puani, "levels" → seviye addr

$execute as @a[name=$(player),limit=1] run xp add @s $(amount) $(type)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/xp_add ","color":"aqua"},{"text":"$(player)","color":"white"},{"text":" → ","color":"dark_gray"},{"text":"$(type)","color":"aqua"}]
