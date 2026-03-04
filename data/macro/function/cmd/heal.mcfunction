# macro:cmd/heal — Playeryu iyviastir (instant_health efekti)
# INPUT: macro:input { player:"<name>", amount:<int> }
# amount: 0=I, 1=II, 2=III (amplifier, each level = 2 hearts)

$execute as @a[name=$(player),limit=1] at @s run effect give @s minecraft:instant_health 1 $(amount) true
