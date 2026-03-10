# macro:cmd/heal — Playeryu iyviastir (instant_health efekti)
# INPUT: macro:input { player:"<name>", amount:<int> }
# amount: 0=I, 1=II, 2=III (amplifier, each level = 2 hearts)

$execute as @a[name=$(player),limit=1] at @s run effect give @s minecraft:instant_health 1 $(amount) true
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/heal ","color":"aqua"},{"text":"$(player)","color":"white"},{"text":" → ","color":"dark_gray"},{"text":"$(amount)","color":"aqua"}]
