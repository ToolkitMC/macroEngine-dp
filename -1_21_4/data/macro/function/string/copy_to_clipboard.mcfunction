# macro:string/copy_to_clipboard — eski sozdizimi (1.21.4 and oncesi)
# INPUT: macro:input { target, text, color, copy_value }
$tellraw $(target) {"text":"$(text)","color":"$(color)","clickEvent":{"action":"copy_to_clipboard","value":"$(copy_value)"},"hoverEvent":{"action":"show_text","value":{"text":"Copy to clipboard","color":"gray","italic":true}}}
