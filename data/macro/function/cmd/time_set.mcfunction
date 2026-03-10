# macro:cmd/time_set — Oyun saatini set
# INPUT: macro:input { value:<int>|"day"|"noon"|"night"|"midnight"|"sunrise"|"sunset" }
# Tamsayi: tick cinsinden (0=gundogumu, 6000=ogle, 12000=gun batimi, 18000=gece yarisi)

$time set $(value)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/time_set ","color":"aqua"},{"text":" → ","color":"dark_gray"},{"text":"$(value)","color":"aqua"}]
