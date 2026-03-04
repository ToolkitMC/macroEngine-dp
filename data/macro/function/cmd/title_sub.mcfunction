# macro:cmd/title_sub — Baslik + alt baslik birlikte gonder
# INPUT: macro:input { player:"<name>", title:"<text>", subtitle:"<text>",
# color:"<color>", sub_color:"<color>" }

$title @a[name=$(player),limit=1] title {"text":"$(title)","color":"$(color)","bold":true}
$title @a[name=$(player),limit=1] subtitle {"text":"$(subtitle)","color":"$(sub_color)","italic":true}
