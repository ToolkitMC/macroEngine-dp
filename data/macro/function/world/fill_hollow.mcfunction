# ============================================
# macro:world/fill_hollow
# ============================================
# Belirtilen bolgenin dis yuzeyini doldurur,
# IC kismi AIR ile bosaltir (fill hollow modu).
# Bosa odacik / ic mekan olusturma icin idealdir.
#
# Kullanim senaryolari:
# - Dungeon odasi olustur
# - Hizli ic mekan bina yap
# - Arena kafesi: dis duvar + bos ic
#
# INPUT: macro:input
# x1/y1/z1 : <int> — Bolgenin kose 1
# x2/y2/z2 : <int> — Bolgenin kose 2
# block : <string> — Dis duvar blogu id
#
# EXAMPLE:
# data modify storage macro:input x1 set value 0
# data modify storage macro:input y1 set value 60
# data modify storage macro:input z1 set value 0
# data modify storage macro:input x2 set value 10
# data modify storage macro:input y2 set value 70
# data modify storage macro:input z2 set value 10
# data modify storage macro:input block set value "minecraft:oak_planks"
# function macro:world/fill_hollow with storage macro:input {}
# ============================================

$fill $(x1) $(y1) $(z1) $(x2) $(y2) $(z2) $(block) hollow
