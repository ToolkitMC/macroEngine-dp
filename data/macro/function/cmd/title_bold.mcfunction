# macro:cmd/title_bold — Playerya kalin title show
# INPUT: macro:input { player:"<name>", text:"<text>", color:"<color>" }

$execute as @a[name=$(player),limit=1] at @s run title @s title {"text":"$(text)","color":"$(color)","bold":true}
