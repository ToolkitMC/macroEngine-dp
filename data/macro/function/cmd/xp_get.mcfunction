# macro:cmd/xp_get — Playernun XP seviyesini read
# INPUT: macro:input { player:"<name>", type:"levels"|"points" }
# OUTPUT: macro:output { result:<int> }

$execute store result storage macro:output result int 1 run xp query @a[name=$(player),limit=1] $(type)
