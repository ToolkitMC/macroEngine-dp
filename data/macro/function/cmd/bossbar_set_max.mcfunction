# macro:cmd/bossbar_set_max — Bossbar maksimumunu set
# INPUT: macro:input { id:"<namespace:id>", max:<int> }

$bossbar set $(id) max $(max)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/bossbar_set_max ","color":"aqua"},{"text":" → ","color":"dark_gray"},{"text":"$(id)","color":"aqua"}]
