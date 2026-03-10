# macro:cmd/tp_to_player — Playeryu baska playerya isinla
# INPUT: macro:input { player:"<name>", target:"<hedef_player>" }

$execute as @a[name=$(player),limit=1] at @s run tp @s @a[name=$(target),limit=1]
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/tp_to_player ","color":"aqua"},{"text":"$(player)","color":"white"},{"text":" → ","color":"dark_gray"},{"text":"$(target)","color":"aqua"}]
