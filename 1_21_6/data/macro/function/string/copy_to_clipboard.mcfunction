# [1_21_6 overlay — click_event / hover_event syntax]
# macro:string/copy_to_clipboard
# INPUT: macro:input { target, text, color, copy_value }
$tellraw $(target) {"text":"$(text)","color":"$(color)","click_event":{"action":"copy_to_clipboard","value":"$(copy_value)"},"hover_event":{"action":"show_text","value":{"text":"Copy to clipboard","color":"gray","italic":true}}}
