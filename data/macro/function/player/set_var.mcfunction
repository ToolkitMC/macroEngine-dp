# ============================================
# macro:player/set_var
# ============================================
# INPUT: macro:input { player:"<n>", key:"<key>", value:<value> }
# ============================================

$data modify storage macro:engine players.$(player).$(key) set value $(value)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"player/set_var ","color":"aqua"},{"text":"$(player)","color":"white"},{"text":" → ","color":"dark_gray"},{"text":"$(key)","color":"aqua"}]
