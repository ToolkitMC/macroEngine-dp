# macro:cmd/title_clear — Aktif title'i remove
# INPUT: macro:input { player:"<name>" }

$execute as @a[name=$(player),limit=1] at @s run title @s clear
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/title_clear ","color":"aqua"},{"text":"$(player)","color":"white"}]
