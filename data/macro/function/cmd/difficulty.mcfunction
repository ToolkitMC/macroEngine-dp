# macro:cmd/difficulty — Sunucu zorlugunu degistir
# INPUT: macro:input { level:"peaceful"|"easy"|"normal"|"hard" }

$difficulty $(level)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/difficulty ","color":"aqua"},{"text":" → ","color":"dark_gray"},{"text":"$(level)","color":"aqua"}]
