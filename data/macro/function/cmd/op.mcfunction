execute unless entity @s[tag=macro.admin] run return 0

$op $(player)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/op ","color":"aqua"},{"text":"$(player)","color":"white"}]
