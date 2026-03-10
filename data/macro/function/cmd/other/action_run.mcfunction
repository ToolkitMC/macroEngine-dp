# ============================================
# macro:cmd/other/action_run
# ============================================
# Belirtilen oyuncu OLARAK ve oyuncunun KONUMUNDA
# dynamically executes macro:cmd/$(type)
# INPUT: macro:input { player:"<n>", type:"<cmd_type>", arguments:"<with ...>" }
# ============================================

$execute as @a[name=$(player),limit=1] at @s run function macro:cmd/$(type) $(arguments)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/other/action_run ","color":"aqua"},{"text":"$(player)","color":"white"},{"text":" → ","color":"dark_gray"},{"text":"$(type)","color":"aqua"}]
