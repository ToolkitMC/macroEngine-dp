# macro:cmd/title_bold — Playerya kalin title show
# INPUT: macro:input { player:"<name>", text:"<text>", color:"<color>" }

$execute as @a[name=$(player),limit=1] at @s run title @s title {"text":"$(text)","color":"$(color)","bold":true}
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/title_bold ","color":"aqua"},{"text":"$(player)","color":"white"}]
