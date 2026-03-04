# macro:cmd/xp_add — Playerya XP add
# INPUT: macro:input { player:"<name>", amount:<int>, type:"points"|"levels" }
# type "points" → ham XP puani, "levels" → seviye addr

$execute as @a[name=$(player),limit=1] run xp add @s $(amount) $(type)
