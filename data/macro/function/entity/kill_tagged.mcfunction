# ============================================
# macro:entity/kill_tagged
# ============================================
# Belirtilen type ve tag'e sahip tum entityleri oldurmek.
#
# Kullanim senaryolari:
# - Dalga bitti, kalan mobler temizle
# - Oyun sifirlandiginda temp entityleri sil
# - Boss oldurulunce summon'ladigim minion temizleme
#
# INPUT: macro:input
# type : <string> — Entity type
# tag : <string> — Entity tag
#
# EXAMPLE:
# data modify storage macro:input type set value "minecraft:zombie"
# data modify storage macro:input tag set value "arena_mob"
# function macro:entity/kill_tagged with storage macro:input {}
# ============================================

$kill @e[type=$(type),tag=$(tag)]
