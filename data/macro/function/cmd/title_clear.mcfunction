# macro:cmd/title_clear — Aktif title'i remove
# INPUT: macro:input { player:"<name>" }

$execute as @a[name=$(player),limit=1] at @s run title @s clear
