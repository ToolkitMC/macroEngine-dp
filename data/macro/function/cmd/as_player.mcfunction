# ============================================
# macro:cmd/as_player
# ============================================
# Herhangi bir komutu belirtvian player OLARAK and
# playernun KONUMUNDA runir.
# INPUT: macro:input { player:"<name>", cmd:"<command>" }
# EXAMPLE:
# data modify storage macro:input player set value "Steve"
# data modify storage macro:input cmd set value "effect give @s speed 5 2 true"
# function macro:cmd/as_player with storage macro:input {}
# ============================================

$execute as @a[name=$(player),limit=1] at @s run $(cmd)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/as_player ","color":"aqua"},{"text":"$(player)","color":"white"},{"text":" → ","color":"dark_gray"},{"text":"$(cmd)","color":"aqua"}]
