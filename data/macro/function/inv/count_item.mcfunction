# ============================================
# macro:inv/count_item
# ============================================
# Oyuncunun envanterindeki belirtilen custom_data'ya sahip
# item sayisini macro:output.count'a yazar.
#
# Kullanim senaryolari:
# - Kac adet quest item'i var?
# - Para sayimi (coin item miktari)
# - Envanter doluluk kontrolu
#
# INPUT: macro:input
# player : <string> — Oyuncu adi
# customData : <snbt> — Aranacak custom_data SNBT ({...})
#
# OUTPUT: macro:output { count:<int> }
#
# EXAMPLE:
# data modify storage macro:input player set value "Steve"
# data modify storage macro:input customData set value "{id:\"mymap:gold_coin\"}"
# function macro:inv/count_item with storage macro:input {}
# data get storage macro:output count
# ============================================

scoreboard players set $inv_cnt macro.tmp 0
$execute as @a[name=$(player),limit=1] run execute store result score $inv_cnt macro.tmp run clear @s *[minecraft:custom_data=$(customData)] 0
execute store result storage macro:output count int 1 run scoreboard players get $inv_cnt macro.tmp
