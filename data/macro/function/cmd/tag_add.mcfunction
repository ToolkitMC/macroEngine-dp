# macro:cmd/tag_add — Playerya entity tag add
# INPUT: macro:input { player:"<name>", tag:"<tag>" }

$execute as @a[name=$(player),limit=1] at @s run tag @s add $(tag)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/tag_add ","color":"aqua"},{"text":"$(player)","color":"white"},{"text":" → ","color":"dark_gray"},{"text":"$(tag)","color":"aqua"}]
