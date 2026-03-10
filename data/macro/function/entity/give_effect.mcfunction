# ============================================
# macro:entity/give_effect
# ============================================
# Belirtilen type ve tag'e sahip tum entitylere efekt uygular.
# Hem mob hem armor_stand hem de diger entity'lere calisir.
#
# Kullanim senaryolari:
# - Arena moblerine glow efekti ver
# - Boss'a custom efekt uygula
# - NPC'yi yavaslat / hizlandir
#
# INPUT: macro:input
# type : <string> — Entity type (minecraft:zombie vb.)
# tag : <string> — Entity tag
# effect : <string> — Etki id'si (minecraft:glowing vb.)
# duration : <int> — Sure (saniye)
# amplifier : <int> — Guc seviyesi (0 = seviye 1)
#
# EXAMPLE:
# data modify storage macro:input type set value "minecraft:zombie"
# data modify storage macro:input tag set value "arena_mob"
# data modify storage macro:input effect set value "minecraft:glowing"
# data modify storage macro:input duration set value 10
# data modify storage macro:input amplifier set value 0
# function macro:entity/give_effect with storage macro:input {}
# ============================================

$effect give @e[type=$(type),tag=$(tag)] $(effect) $(duration) $(amplifier) true
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"entity/give_effect ","color":"aqua"},{"text":" → ","color":"dark_gray"},{"text":"$(effect)","color":"aqua"}]
