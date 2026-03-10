# macro:player/online_check — Is the player currently online?
# INPUT: macro:input { player:"<playerName>" }
# OUTPUT: macro:output { result: 1b (online) or 0b (offline) }

data modify storage macro:output result set value 0b
$execute if entity @a[name=$(player),limit=1] run data modify storage macro:output result set value 1b
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"player/online_check ","color":"aqua"},{"text":"$(player)","color":"white"},{"text":" → ","color":"dark_gray"},{"storage":"macro:output","nbt":"result","color":"green"}]
