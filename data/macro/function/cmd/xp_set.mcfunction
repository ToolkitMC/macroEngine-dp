# macro:cmd/xp_set — Playernun XP'sini set
# INPUT: macro:input { player:"<name>", amount:<int>, type:"points"|"levels" }

$execute as @a[name=$(player),limit=1] run xp set @s $(amount) $(type)
