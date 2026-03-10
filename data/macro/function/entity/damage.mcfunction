# ============================================
# macro:entity/damage
# ============================================
# Belirtilen type ve tag'e sahip tum entitylere hasar uygular.
# Herkese ayni anda hasar vermek icin idealdir.
#
# Kullanim senaryolari:
# - Bolgedeki tum mobelere area damage ver
# - Trap tetiklenince tum arena moblerini zarara ugrat
# - Boss mekanik: etraftaki tum entitilere tick hasar
#
# INPUT: macro:input
# type : <string> — Entity type
# tag : <string> — Entity tag
# amount : <float> — Hasar miktari (yarim kalp = 1.0)
# damage_type : <string> — Hasar tipi (macro:magic, minecraft:generic vb.)
#
# EXAMPLE:
# data modify storage macro:input type set value "minecraft:zombie"
# data modify storage macro:input tag set value "arena_mob"
# data modify storage macro:input amount set value 5.0
# data modify storage macro:input damage_type set value "macro:magic"
# function macro:entity/damage with storage macro:input {}
# ============================================

$damage @e[type=$(type),tag=$(tag)] $(amount) $(damage_type)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"entity/damage ","color":"aqua"},{"text":" → ","color":"dark_gray"},{"text":"$(type)","color":"aqua"}]
