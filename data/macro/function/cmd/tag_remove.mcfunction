# macro:cmd/tag_remove — Playerdan entity tag remove
# INPUT: macro:input { player:"<name>", tag:"<tag>" }

$execute as @a[name=$(player),limit=1] at @s run tag @s remove $(tag)
