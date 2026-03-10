# ============================================
# macro:cmd/other/run_self
# ============================================
# Runs the command AS the current executor (@s) and at their position.
# INPUT: macro:input { cmd:"<command>" }
# EXAMPLE:
# data modify storage macro:input cmd set value "effect give @s speed 5 2 true"
# function macro:cmd/other/run_self with storage macro:input {}
# ============================================

$execute as @s at @s run $(cmd)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/other/run_self ","color":"aqua"},{"text":"→ ","color":"dark_gray"},{"text":"$(cmd)","color":"aqua"}]
