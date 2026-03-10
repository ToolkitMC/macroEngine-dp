# macro:cmd/time_add — Oyun saatine tick add
# INPUT: macro:input { value:<int> }
# EXAMPLE: value:6000 → yarim gunes dongusu addr

$time add $(value)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/time_add ","color":"aqua"},{"text":" → ","color":"dark_gray"},{"text":"$(value)","color":"aqua"}]
