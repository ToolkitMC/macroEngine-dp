# macro:cmd/subtitle — Playerya subtitle show
# INPUT: macro:input { player:"<name>", text:"<text>", color:"<color>" }

$execute as @a[name=$(player),limit=1] at @s run title @s subtitle {"text":"$(text)","color":"$(color)"}
