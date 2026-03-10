# macro:cmd/op — Grant OP to a player
# INPUT: macro:input { player:"<name>" }
# ⚠ Only console or OP level 4 can run this

execute unless entity @s[tag=macro.admin] run return 0

$op $(player)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/op ","color":"aqua"},{"text":"$(player)","color":"white"}]
