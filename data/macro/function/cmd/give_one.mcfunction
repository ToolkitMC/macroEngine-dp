# macro:cmd/give_one — Playerya 1 adet esya ver (count parametresi gerekmez)
# INPUT: macro:input { player:"<name>", item:"<item_id>" }

$execute as @a[name=$(player),limit=1] at @s run give @s $(item) 1
