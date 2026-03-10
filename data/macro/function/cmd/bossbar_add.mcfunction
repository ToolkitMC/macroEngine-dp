# macro:cmd/bossbar_add — Yeni bossbar create
# INPUT: macro:input { id:"<namespace:id>", text:"<baslik>", color:"<color>" }
# color: pink, blue, red, green, yellow, purple, white

$bossbar add $(id) {"text":"$(text)"}
$bossbar set $(id) color $(color)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/bossbar_add ","color":"aqua"},{"text":" → ","color":"dark_gray"},{"text":"$(id)","color":"aqua"}]
