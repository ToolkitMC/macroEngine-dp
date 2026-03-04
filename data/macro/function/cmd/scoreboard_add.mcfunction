# macro:cmd/scoreboard_add — Playernun scoreboard valueine add
# INPUT: macro:input { player:"<name>", objective:"<objective>", amount:<int> }

$execute as @a[name=$(player),limit=1] at @s run scoreboard players add @s $(objective) $(amount)
