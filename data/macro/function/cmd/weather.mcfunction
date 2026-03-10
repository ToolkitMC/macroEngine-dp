# macro:cmd/weather — Set the weather
# INPUT: macro:input { type:"clear"|"rain"|"thunder", duration:<int> }
# duration: saniye cinsinden (0 = if present,yilan)

$weather $(type) $(duration)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/weather ","color":"aqua"},{"text":" → ","color":"dark_gray"},{"text":"$(type)","color":"aqua"}]
