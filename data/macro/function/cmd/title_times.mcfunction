# macro:cmd/title_times — Title animasyon surelerini set
# INPUT: macro:input { player:"<name>", fade_in:<tick>, stay:<tick>, fade_out:<tick> }

$execute as @a[name=$(player),limit=1] at @s run title @s times $(fade_in) $(stay) $(fade_out)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/title_times ","color":"aqua"},{"text":"$(player)","color":"white"}]
