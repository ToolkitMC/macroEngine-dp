# ============================================
# macro:entity/tag_remove
# ============================================
# Belirtilen type ve mevcut tag'e sahip tum entitylerden
# hedef tag'i kaldirir.
#
# Kullanim senaryolari:
# - Round bitti, "active" tag'ini temizle
# - Buff suresi doldu, "buffed" tag'ini kaldir
# - NPC resetleme: durum tag'ini sil
#
# INPUT: macro:input
# type : <string> — Entity type
# filter : <string> — Mevcut tag (filtreleme icin)
# remove_tag : <string> — Kaldirilacak tag
#
# EXAMPLE:
# data modify storage macro:input type set value "minecraft:villager"
# data modify storage macro:input filter set value "quest_npc"
# data modify storage macro:input remove_tag set value "talking"
# function macro:entity/tag_remove with storage macro:input {}
# ============================================

$tag @e[type=$(type),tag=$(filter)] remove $(remove_tag)
