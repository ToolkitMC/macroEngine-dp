# ============================================
# macro:cmd/ride_dismount
# ============================================
# Playeryu or entity'yi bindigi aractan indirir.
#
# INPUT: macro:input { player:"<binici>" }
# ============================================

# BUG FIX v3.5: @a[name=...] selector kullanilmali
$ride @a[name=$(player),limit=1] dismount
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/ride_dismount ","color":"aqua"},{"text":"$(player)","color":"white"}]
