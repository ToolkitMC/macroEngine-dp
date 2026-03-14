$data remove storage macro:engine players.$(player)
$data remove storage macro:engine cooldowns.$(player)
function macro:player/init with storage macro:input {}
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"player/reset ","color":"aqua"},{"text":"$(player)","color":"white"}]
