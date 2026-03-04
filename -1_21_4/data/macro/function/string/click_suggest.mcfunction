# macro:string/click_suggest — eski sozdizimi (1.21.4 and oncesi)
# INPUT: macro:input { target, text, color, suggest }
$tellraw $(target) {"text":"$(text)","color":"$(color)","clickEvent":{"action":"suggest_command","value":"$(suggest)"},"hoverEvent":{"action":"show_text","value":{"text":"Click","color":"gray","italic":true}}}
