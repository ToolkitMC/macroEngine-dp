# ============================================
# macro:cmd/effect_give_all
# ============================================
# Tum online oyunculara ayni etkiyi ayni anda verir.
# macro:cmd/effect_give'den farki: oyuncu adi gerekmez.
#
# Kullanim senaryolari:
# - Round baslangicinda herkese Speed
# - Cutscene sirasinda herkese Blindness
# - Oyun biterken herkese Saturation
#
# INPUT: macro:input
# effect : <string> — Etki id'si (minecraft:speed vb.)
# duration : <int> — Sure (saniye; 0 = surekli)
# amplifier : <int> — Guc seviyesi (0 = seviye 1)
# hide : <string> — "true" | "false" — partikul gizle
#
# EXAMPLE:
# data modify storage macro:input effect set value "minecraft:slowness"
# data modify storage macro:input duration set value 10
# data modify storage macro:input amplifier set value 2
# data modify storage macro:input hide set value "true"
# function macro:cmd/effect_give_all with storage macro:input {}
# ============================================

$effect give @a $(effect) $(duration) $(amplifier) $(hide)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/effect_give_all ","color":"aqua"},{"text":" → ","color":"dark_gray"},{"text":"$(effect)","color":"aqua"}]
