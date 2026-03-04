# macro:cmd/tag_add — Playerya entity tag add
# INPUT: macro:input { player:"<name>", tag:"<tag>" }

$execute as @a[name=$(player),limit=1] at @s run tag @s add $(tag)
