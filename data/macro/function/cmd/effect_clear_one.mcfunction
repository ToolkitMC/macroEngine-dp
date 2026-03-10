# macro:cmd/effect_clear_one — Belirli bir efekti clear
# INPUT: macro:input { player:"<name>", effect:"<effect_id>" }

$execute as @a[name=$(player),limit=1] at @s run effect clear @s $(effect)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/effect_clear_one ","color":"aqua"},{"text":"$(player)","color":"white"},{"text":" → ","color":"dark_gray"},{"text":"$(effect)","color":"aqua"}]
