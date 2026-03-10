# ============================================
# macro:trigger/enable
# ============================================
# /trigger macro_action set <N> komutunu aktif eder.
# INPUT: macro:input { player:"<player_adi>" }
# ============================================

$scoreboard players enable $(player) macro_action
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"trigger/enable ","color":"aqua"},{"text":"✔ ","color":"green"},{"text":"$(player)","color":"white"},{"text":" — macro_action enabled","color":"dark_gray"}]
