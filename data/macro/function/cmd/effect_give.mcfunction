# macro:cmd/effect_give — Playerya efekt ver
# INPUT: macro:input { player:"<n>", effect:"<effect_id>", duration:<int>, amplifier:<int> }
# duration: SANIYE cinsinden (20 = 1 saniye). Tik DEGIL!
# EXAMPLE: effect:"minecraft:speed", duration:10, amplifier:1

$execute as @a[name=$(player),limit=1] at @s run effect give @s $(effect) $(duration) $(amplifier) true
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/effect_give ","color":"aqua"},{"text":"$(player)","color":"white"},{"text":" → ","color":"dark_gray"},{"text":"$(effect)","color":"aqua"}]
