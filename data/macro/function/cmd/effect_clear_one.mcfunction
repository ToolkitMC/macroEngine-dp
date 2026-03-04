# macro:cmd/effect_clear_one — Belirli bir efekti clear
# INPUT: macro:input { player:"<name>", effect:"<effect_id>" }

$execute as @a[name=$(player),limit=1] at @s run effect clear @s $(effect)
