# macro:cmd/sound — Playerya ses cal
# INPUT: macro:input { player:"<name>", sound:"<sound_id>", volume:<float>, pitch:<float> }
# EXAMPLE: sound:"minecraft:entity.player.levelup", volume:1, pitch:1

$execute as @a[name=$(player),limit=1] at @s run playsound $(sound) master @s ~ ~ ~ $(volume) $(pitch)
