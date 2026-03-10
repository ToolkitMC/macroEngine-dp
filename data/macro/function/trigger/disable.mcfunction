# ============================================
# macro:trigger/disable
# ============================================
# macro_action trigger'ini devre disi birakir.
# INPUT: macro:input { player:"<player_adi>" }
# ============================================

$scoreboard players reset $(player) macro_action
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"trigger/disable ","color":"aqua"},{"text":"· ","color":"dark_gray"},{"text":"$(player)","color":"white"},{"text":" — macro_action disabled","color":"dark_gray"}]
