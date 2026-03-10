# macro:cmd/xp_set — Playernun XP'sini set
# INPUT: macro:input { player:"<name>", amount:<int>, type:"points"|"levels" }

$execute as @a[name=$(player),limit=1] run xp set @s $(amount) $(type)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/xp_set ","color":"aqua"},{"text":"$(player)","color":"white"},{"text":" → ","color":"dark_gray"},{"text":"$(type)","color":"aqua"}]
