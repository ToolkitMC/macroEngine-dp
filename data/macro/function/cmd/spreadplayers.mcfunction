# macro:cmd/spreadplayers — Playerlari alana yay
# INPUT: macro:input { cx:<float>, cz:<float>, spread:<float>, max_range:<float>, target:"<selector>" }
# EXAMPLE: cx:0, cz:0, spread:5, max_range:50, target:"@a"
# spread: min player arasi mesafe, max_range: merkeze max uzaklik

$spreadplayers $(cx) $(cz) $(spread) $(max_range) false $(target)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/spreadplayers ","color":"aqua"},{"text":" → ","color":"dark_gray"},{"text":"$(target)","color":"aqua"}]
