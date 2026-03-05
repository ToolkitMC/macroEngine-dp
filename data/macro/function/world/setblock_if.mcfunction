# ============================================
# macro:world/setblock_if
# ============================================
# Koordinatta belirtilen blok VARSA YERINE baska blok koyar.
# Atomik blok degisimi: yanlis blogu ezme riski olmadan degistir.
#
# Kullanim senaryolari:
# - Puzzle: dogru blogu interact ile degistir
# - Kapinin tam kapaliyken acilmasi
# - Sadece bos yere (air) blok koy
#
# INPUT: macro:input
# x : <int> — X koordinati
# y : <int> — Y koordinati
# z : <int> — Z koordinati
# expected : <string> — Beklenen mevcut blok
# new_block : <string> — Konulacak yeni blok
# mode : <string> — replace | keep | destroy
#
# EXAMPLE:
# data modify storage macro:input x set value 5
# data modify storage macro:input y set value 64
# data modify storage macro:input z set value 5
# data modify storage macro:input expected set value "minecraft:air"
# data modify storage macro:input new_block set value "minecraft:diamond_block"
# data modify storage macro:input mode set value "replace"
# function macro:world/setblock_if with storage macro:input {}
# ============================================

$execute if block $(x) $(y) $(z) $(expected) run setblock $(x) $(y) $(z) $(new_block) $(mode)
