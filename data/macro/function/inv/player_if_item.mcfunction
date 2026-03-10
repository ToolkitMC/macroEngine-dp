# ============================================
# macro:inv/player_if_item
# ============================================
# Belirtilen oyuncunun herhangi bir slotunda
# custom_data'ya sahip item VARSA komutu run eder.
#
# Kullanim senaryolari:
# - Oyuncuda quest item var mi dogrula
# - Belirli esyayi tasiyorsa buff ver
# - Ozel anahtar ile kapi acma sistemi
#
# INPUT: macro:input
# player : <string> -- Oyuncu adi
# customData : <snbt> -- Aranacak custom_data SNBT ({...})
# action : <string> -- Kosul saglanirsa run edilecek komut
#
# EXAMPLE:
# data modify storage macro:input player set value "Steve"
# data modify storage macro:input customData set value "{id:\"mymap:vip_card\"}"
# data modify storage macro:input invoke set value "gamemode creative @s"
# function macro:inv/player_if_item with storage macro:input {}
# ============================================

$execute as @a[name=$(player),limit=1] at @s if items entity @s *.* *[minecraft:custom_data=$(customData)] run $(invoke)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"inv/player_if_item ","color":"aqua"},{"text":"$(player)","color":"white"}]
