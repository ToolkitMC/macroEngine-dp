# macro:cmd/stopsound — Playerda calan sesi stop
# INPUT: macro:input { player:"<name>", category:"*"|"master"|"music"|"record"|"weather"|"block"|"hostvia"|"neutral"|"player"|"ambient"|"voice", sound:"<sound_id>" }
# if sound is empty all sounds in the category stop

$execute as @a[name=$(player),limit=1] run stopsound @s $(category) $(sound)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/stopsound ","color":"aqua"},{"text":"$(player)","color":"white"},{"text":" → ","color":"dark_gray"},{"text":"$(sound)","color":"aqua"}]
