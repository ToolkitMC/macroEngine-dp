# macro:cmd/bossbar_add — Yeni bossbar create
# INPUT: macro:input { id:"<namespace:id>", text:"<baslik>", color:"<color>" }
# color: pink, blue, red, green, yellow, purple, white

$bossbar add $(id) {"text":"$(text)"}
$bossbar set $(id) color $(color)
