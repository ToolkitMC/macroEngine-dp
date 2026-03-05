# ============================================
# macro:entity/tag_add
# ============================================
# Belirtilen type ve mevcut tag'e sahip tum entitylere
# yeni bir tag ekler.
#
# Kullanim senaryolari:
# - Dalga 2'deki mobler icin "elite" tag ekle
# - Belirli tüm NPC'leri "active" olarak isaretle
# - Filtreli grup etiketleme
#
# INPUT: macro:input
# type : <string> — Entity type
# filter : <string> — Mevcut tag (filtreleme icin)
# new_tag : <string> — Eklenecek yeni tag
#
# EXAMPLE:
# data modify storage macro:input type set value "minecraft:zombie"
# data modify storage macro:input filter set value "wave_1"
# data modify storage macro:input new_tag set value "elite"
# function macro:entity/tag_add with storage macro:input {}
# ============================================

$tag @e[type=$(type),tag=$(filter)] add $(new_tag)
