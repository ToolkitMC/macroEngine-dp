# macro:cmd/bossbar_set_value — Bossbar valueini set (0..max)
# INPUT: macro:input { id:"<namespace:id>", value:<int> }

$bossbar set $(id) value $(value)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/bossbar_set_value ","color":"aqua"},{"text":" → ","color":"dark_gray"},{"text":"$(id)","color":"aqua"}]
