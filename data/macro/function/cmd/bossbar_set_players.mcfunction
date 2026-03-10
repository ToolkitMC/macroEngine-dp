# macro:cmd/bossbar_set_players — Show bossbar to all players
# INPUT: macro:input { id:"<namespace:id>" }

$bossbar set $(id) players @a
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/bossbar_set_players ","color":"aqua"},{"text":" → ","color":"dark_gray"},{"text":"$(id)","color":"aqua"}]
