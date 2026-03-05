# ============================================
# macro:cmd/display_name
# ============================================
# Tag'e sahip entity'nin display name'ini dinamik olarak ayarlar.
# JSON text component formatinda isim ver.
#
# Kullanim senaryolari:
# - Boss health bar'i isimlendirme
# - NPC'nin ismini oyuncuya ozel degistir
# - Custom mob ad guncelleme (dalga numarasi vs)
#
# INPUT: macro:input
# tag : <string> — Hedef entity tag'i
# type : <string> — Entity type (minecraft:zombie vb.)
# name : <string> — JSON text component
# ('{"text":"Boss","color":"red"}' gibi)
#
# EXAMPLE:
# data modify storage macro:input tag set value "boss_entity"
# data modify storage macro:input type set value "minecraft:wither"
# data modify storage macro:input name set value "{\"text\":\"Kral Wither\",\"color\":\"dark_red\",\"bold\":true}"
# function macro:cmd/display_name with storage macro:input {}
# ============================================

$data modify entity @e[type=$(type),tag=$(tag),limit=1] CustomName set value '$(name)'
