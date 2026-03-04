# macro:string/click_run — eski sozdizimi (1.21.4 and oncesi)
# INPUT: macro:input { target, text, color, command }
$tellraw $(target) {"text":"$(text)","color":"$(color)","clickEvent":{"action":"run_command","value":"$(command)"},"hoverEvent":{"action":"show_text","value":{"text":"Click","color":"gray","italic":true}}}
