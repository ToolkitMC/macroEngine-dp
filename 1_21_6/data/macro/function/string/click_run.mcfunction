# [1_21_6 overlay — click_event / hover_event syntax]
# macro:string/click_run
# INPUT: macro:input { target, text, color, command }
$tellraw $(target) {"text":"$(text)","color":"$(color)","click_event":{"action":"run_command","command":"$(command)"},"hover_event":{"action":"show_text","value":{"text":"Click","color":"gray","italic":true}}}
