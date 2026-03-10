# ============================================
# macro:player/copy_var
# ============================================
# Copy a player variable to another player.
# INPUT: macro:input { from:"<source>", to:"<target>", key:"<variable>" }
# ============================================

$data modify storage macro:engine players.$(to).$(key) set from storage macro:engine players.$(from).$(key)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"player/copy_var ","color":"aqua"},{"text":" → ","color":"dark_gray"},{"text":"$(key)","color":"aqua"}]
