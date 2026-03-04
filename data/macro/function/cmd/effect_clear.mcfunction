# macro:cmd/effect_clear — Clear all effects from a player
# INPUT: macro:input { player:"<name>" }

$execute as @a[name=$(player),limit=1] at @s run effect clear @s
