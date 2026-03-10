# macro:cmd/actionbar — Playerya actionbar mesaji show
# INPUT: macro:input { player:"<name>", text:"<text>", color:"<color>" }

$execute as @a[name=$(player),limit=1] at @s run title @s actionbar {"text":"$(text)","color":"$(color)"}
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/actionbar ","color":"aqua"},{"text":"$(player)","color":"white"}]
