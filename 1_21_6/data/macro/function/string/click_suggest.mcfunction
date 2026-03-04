# [1_21_6 overlay — click_event / hover_event syntax]
# macro:string/click_suggest
# INPUT: macro:input { target, text, color, suggest }
$tellraw $(target) {"text":"$(text)","color":"$(color)","click_event":{"action":"suggest_command","command":"$(suggest)"},"hover_event":{"action":"show_text","value":{"text":"Click","color":"gray","italic":true}}}
