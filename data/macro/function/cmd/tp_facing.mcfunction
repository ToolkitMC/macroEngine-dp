# macro:cmd/tp_facing — Playeryu koordinata isinla and belirli yone baktir
# INPUT: macro:input { player:"<name>", x:<float>, y:<float>, z:<float>,
# fx:<float>, fy:<float>, fz:<float> }

$execute as @a[name=$(player),limit=1] at @s run tp @s $(x) $(y) $(z) facing $(fx) $(fy) $(fz)
