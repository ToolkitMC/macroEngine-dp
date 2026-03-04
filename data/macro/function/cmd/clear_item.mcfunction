# macro:cmd/clear_item — Playerdan belirli esyayi remove
# INPUT: macro:input { player:"<name>", item:"<item_id>", count:<int> }

$execute as @a[name=$(player),limit=1] at @s run clear @s $(item) $(count)
