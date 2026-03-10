# ============================================
# macro:team/set_color
# ============================================
# Takimin rengini setr.
# INPUT: macro:input { team:"<name>", color:"<color>" }
# Gecerli renkler: black, dark_blue, dark_green, dark_aqua,
# dark_red, dark_purple, gold, gray, dark_gray, blue,
# green, aqua, red, light_purple, yellow, white, reset
# OUTPUT: —
# ============================================

$team modify $(team) color $(color)
$data modify storage macro:engine teams.$(team).color set value "$(color)"
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"team/set_color ","color":"aqua"},{"text":" → ","color":"dark_gray"},{"text":"$(team)","color":"aqua"}]
