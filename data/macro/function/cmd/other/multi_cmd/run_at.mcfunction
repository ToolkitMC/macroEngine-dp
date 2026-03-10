# ============================================
# macro:cmd/other/multi_cmd/run_at
# ============================================
# _mcmd_list içindeki komutları belirtilen koordinatta
# çalıştırır (executor değişmez).
#
# INPUT (makro): macro:input { x:"<x>", y:"<y>", z:"<z>" }
# ÖN KOŞUL: macro:engine _mcmd_list dolu olmalı
#
# KULLANIM:
# data modify storage macro:engine _mcmd_list set value ["setblock ~ ~ ~ stone", "particle flame ~ ~ ~"]
# data modify storage macro:input x set value "100"
# data modify storage macro:input y set value "64"
# data modify storage macro:input z set value "200"
# function macro:cmd/other/multi_cmd/run_at with storage macro:input {}
# ============================================

$execute positioned $(x) $(y) $(z) run function macro:cmd/other/multi_cmd/run
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/other/multi_cmd/run_at ","color":"aqua"},{"text":"@ ","color":"dark_gray"},{"text":"$(x) $(y) $(z)","color":"aqua"},{"text":" ▶ done","color":"green"}]
