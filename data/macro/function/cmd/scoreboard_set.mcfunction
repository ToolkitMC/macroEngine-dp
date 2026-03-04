# macro:cmd/scoreboard_set — Playernun scoreboard valueini write
# INPUT: macro:input { player:"<name>", objective:"<objective>", value:<int> }

$execute as @a[name=$(player),limit=1] at @s run scoreboard players set @s $(objective) $(value)
