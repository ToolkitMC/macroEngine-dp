# macro:cmd/tp — Playeryu koordinata isinla
# INPUT: macro:input { player:"<name>", x:<float>, y:<float>, z:<float> }

$execute as @a[name=$(player),limit=1] at @s run tp @s $(x) $(y) $(z)
