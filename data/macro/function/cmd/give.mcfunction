# macro:cmd/giand — Playerya esya ver
# INPUT: macro:input { player:"<name>", item:"<item_id>", count:<int> }

$execute as @a[name=$(player),limit=1] at @s run give @s $(item) $(count)
