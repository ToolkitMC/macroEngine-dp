# macro:cmd/sound_all — Play a sound for all players
# INPUT: macro:input { sound:"<sound_id>", volume:<float>, pitch:<float> }

$playsound $(sound) master @a ~ ~ ~ $(volume) $(pitch)
