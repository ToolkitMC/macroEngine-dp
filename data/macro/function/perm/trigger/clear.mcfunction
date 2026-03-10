# ============================================
# macro:perm/trigger/clear
# ============================================
# İsimli trigger'in tüm bağlarını temizler.
# Scoreboard objective kaldırılmaz — sadece bind listesi temizlenir.
#
# INPUT: macro:input { name:"<trigger_adi>" }
# ============================================

$data remove storage macro:engine perm_triggers.$(name)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"perm/trigger/clear ","color":"aqua"},{"text":"⚠ ","color":"yellow"},{"text":"$(name)","color":"white"},{"text":" — tüm bağlar temizlendi","color":"dark_gray"}]
