# ============================================
# macro:world/fill_keep
# ============================================
# Belirtilen bolgede yalnizca AIR (bos) olan yerlere blok koyar.
# Mevcut bloklara dokunmaz (fill keep modu).
#
# Kullanim senaryolari:
# - Puzzle: eksik bloklari tamamla
# - Dogal taban: yalnizca bos yerleri doldur
# - Yapinin "deliklerini" kapat
#
# INPUT: macro:input
# x1/y1/z1 : <int> — Bolgenin kose 1
# x2/y2/z2 : <int> — Bolgenin kose 2
# block : <string> — Konulacak blok id
#
# EXAMPLE:
# data modify storage macro:input x1 set value 0
# data modify storage macro:input y1 set value 60
# data modify storage macro:input z1 set value 0
# data modify storage macro:input x2 set value 10
# data modify storage macro:input y2 set value 65
# data modify storage macro:input z2 set value 10
# data modify storage macro:input block set value "minecraft:stone"
# function macro:world/fill_keep with storage macro:input {}
# ============================================

$fill $(x1) $(y1) $(z1) $(x2) $(y2) $(z2) $(block) keep
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"world/fill_keep ","color":"aqua"},{"text":" → ","color":"dark_gray"},{"text":"$(block)","color":"aqua"}]
