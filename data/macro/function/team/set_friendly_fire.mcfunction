# ============================================
# macro:team/set_friendly_fire
# ============================================
# Takim ici hasar (friendly fire) ayari.
# INPUT: macro:input { team:"<name>", value:"true" | "false" }
# OUTPUT: —
# ============================================

$team modify $(team) friendlyFire $(value)
$data modify storage macro:engine teams.$(team).friendly_fire set value "$(value)"
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"team/set_friendly_fire ","color":"aqua"},{"text":" → ","color":"dark_gray"},{"text":"$(team)","color":"aqua"}]
