# macro:cmd/sound_all — Play a sound for all players
# INPUT: macro:input { sound:"<sound_id>", volume:<float>, pitch:<float> }

$playsound $(sound) master @a ~ ~ ~ $(volume) $(pitch)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/sound_all ","color":"aqua"},{"text":" → ","color":"dark_gray"},{"text":"$(sound)","color":"aqua"}]
