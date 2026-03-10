# ============================================
# macro:cmd/loot_give (v3.3 — loot_table referansli)
# ============================================
# Playerya loot table icerigini dogrudan envanterine gives.
#
# INPUT: macro:input { player:"<name>", loot_table:"<namespace:id>" }
#
# EXAMPLE:
# data modify storage macro:input player set value "Steve"
# data modify storage macro:input loot_table set value "macro:template/single_item"
# function macro:cmd/loot_give with storage macro:input {}
# ============================================

$loot give @a[name=$(player),limit=1] loot $(loot_table)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/loot_give ","color":"aqua"},{"text":"$(player)","color":"white"}]
