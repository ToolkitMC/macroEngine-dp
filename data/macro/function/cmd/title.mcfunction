# macro:cmd/title — Playerya title show
# INPUT: macro:input { player:"<name>", text:"<text>", color:"<color>" }

$execute as @a[name=$(player),limit=1] at @s run title @s title {"text":"$(text)","color":"$(color)"}
