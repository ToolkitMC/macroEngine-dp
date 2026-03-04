# macro:cmd/actionbar — Playerya actionbar mesaji show
# INPUT: macro:input { player:"<name>", text:"<text>", color:"<color>" }

$execute as @a[name=$(player),limit=1] at @s run title @s actionbar {"text":"$(text)","color":"$(color)"}
