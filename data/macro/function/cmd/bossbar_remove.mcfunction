# macro:cmd/bossbar_remove — Bossbar'i sil
# INPUT: macro:input { id:"<namespace:id>" }

$bossbar remove $(id)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/bossbar_remove ","color":"aqua"},{"text":" → ","color":"dark_gray"},{"text":"$(id)","color":"aqua"}]
