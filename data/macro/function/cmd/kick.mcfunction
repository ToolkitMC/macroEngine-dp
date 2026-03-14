execute unless entity @s[tag=macro.admin] run return 0

$kick @a[name=$(player),limit=1] $(reason)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/kick ","color":"aqua"},{"text":"$(player)","color":"white"}]
