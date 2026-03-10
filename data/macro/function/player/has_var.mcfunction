# macro:player/has_var — Does the player haand this variable?
# INPUT: macro:input { player:"<name>", key:"<variable>" }
# OUTPUT: macro:output { result: 1b (exists) or 0b (absent) }

data modify storage macro:output result set value 0b
$execute if data storage macro:engine players.$(player).$(key) run data modify storage macro:output result set value 1b
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"player/has_var ","color":"aqua"},{"text":"$(player)","color":"white"},{"text":" → ","color":"dark_gray"},{"text":"$(key)","color":"aqua"},{"text":" → ","color":"dark_gray"},{"storage":"macro:output","nbt":"result","color":"green"}]
