# ============================================
# macro:world/fill_replace
# ============================================
# Bir bolgeyi belirtilen blokla doldurur;
# replace_with ile sadece belirli bloklarin uzerine yazar.
# Hem reset (air ile doldur) hem de blok degistirme icin idealdir.
#
# Kullanim senaryolari:
# - Arenayı temizle (air ile doldur)
# - Sadece grass'lari dirt ile degistir
# - Puzzle reset: eski bloklari yerine koy
#
# INPUT: macro:input
# x1 / y1 / z1 : <int> — Birinci kose koordinatlari
# x2 / y2 / z2 : <int> — Ikinci kose koordinatlari
# block : <string> — Doldurulacak blok
# replace_with : <string> — Yalnizca bu blok varsa degistir
# (hersey icin: "minecraft:air" gibi genis bir blok)
#
# EXAMPLE:
# data modify storage macro:input x1 set value -5
# data modify storage macro:input y1 set value 60
# data modify storage macro:input z1 set value -5
# data modify storage macro:input x2 set value 5
# data modify storage macro:input y2 set value 65
# data modify storage macro:input z2 set value 5
# data modify storage macro:input block set value "minecraft:air"
# data modify storage macro:input replace_with set value "minecraft:grass_block"
# function macro:world/fill_replace with storage macro:input {}
# ============================================

$fill $(x1) $(y1) $(z1) $(x2) $(y2) $(z2) $(block) replace $(replace_with)
