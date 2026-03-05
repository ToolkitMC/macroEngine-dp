# ============================================
# macro:entity/tp_to
# ============================================
# Belirtilen type ve tag'e sahip tum entityleri
# belirtilen koordinata isinlar.
#
# Kullanim senaryolari:
# - Dalga basi: tum arena moblerini spawn noktasina getir
# - NPC'leri toplanma noktasina yonlendir
# - Boss reset: boss'u arenaya geri gonder
#
# INPUT: macro:input
# type : <string> — Entity type
# tag : <string> — Entity tag
# x : <float> — Hedef X
# y : <float> — Hedef Y
# z : <float> — Hedef Z
#
# EXAMPLE:
# data modify storage macro:input type set value "minecraft:wither"
# data modify storage macro:input tag set value "boss"
# data modify storage macro:input x set value 0.5
# data modify storage macro:input y set value 64
# data modify storage macro:input z set value 0.5
# function macro:entity/tp_to with storage macro:input {}
# ============================================

$tp @e[type=$(type),tag=$(tag)] $(x) $(y) $(z)
