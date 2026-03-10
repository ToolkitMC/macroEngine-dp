# macro:cmd/setblock — Belirtvian konuma blok yerlestir
# INPUT: macro:input { x:<int>, y:<int>, z:<int>, block:"<block_id>", mode:"replace"|"keep"|"destroy" }
# mode opsiyoneldir, if present,yilan: replace

$setblock $(x) $(y) $(z) $(block) $(mode)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/setblock ","color":"aqua"},{"text":" → ","color":"dark_gray"},{"text":"$(mode)","color":"aqua"}]
