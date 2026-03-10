# ============================================
# macro:world/fill_outline
# ============================================
# Belirtilen bolgenin yalnizca DIS YUZEYINI doldurur.
# Ic kisim etkilenmez (fill outline modu).
#
# Kullanim senaryolari:
# - Oda duvarlari / odacik olusturma
# - Arena sinirlarini ciz
# - Kafes / kutu yapisi
#
# INPUT: macro:input
# x1/y1/z1 : <int> — Bolgenin kose 1
# x2/y2/z2 : <int> — Bolgenin kose 2
# block : <string> — Dis yuzeye konulacak blok id
#
# EXAMPLE:
# data modify storage macro:input x1 set value -5
# data modify storage macro:input y1 set value 60
# data modify storage macro:input z1 set value -5
# data modify storage macro:input x2 set value 5
# data modify storage macro:input y2 set value 70
# data modify storage macro:input z2 set value 5
# data modify storage macro:input block set value "minecraft:stone_bricks"
# function macro:world/fill_outline with storage macro:input {}
# ============================================

$fill $(x1) $(y1) $(z1) $(x2) $(y2) $(z2) $(block) outline
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"world/fill_outline ","color":"aqua"},{"text":" → ","color":"dark_gray"},{"text":"$(block)","color":"aqua"}]
