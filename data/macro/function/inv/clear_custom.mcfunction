# ============================================
# macro:inv/clear_custom
# ============================================
# Oyuncunun envanterindeki belirtilen custom_data'ya sahip
# item'lari belirtilen miktarda siler.
# count: 0 → hepsini sil; pozitif sayi → o kadar sil.
#
# Kullanim senaryolari:
# - Odeme al (N adet coin sil)
# - Quest item teslim alındiktan sonra sil
# - Kullanim sonrasi tek kullanımlik item yok et
#
# INPUT: macro:input
# player : <string> — Oyuncu adi
# customData : <snbt> — Silinecek item custom_data SNBT ({...})
# count : <int> — Silinecek miktar (0 = hepsi)
#
# EXAMPLE:
# data modify storage macro:input player set value "Steve"
# data modify storage macro:input customData set value "{id:\"mymap:gold_coin\"}"
# data modify storage macro:input count set value 5
# function macro:inv/clear_custom with storage macro:input {}
# ============================================

$execute as @a[name=$(player),limit=1] run clear @s *[minecraft:custom_data=$(customData)] $(count)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"inv/clear_custom ","color":"aqua"},{"text":"$(player)","color":"white"}]
