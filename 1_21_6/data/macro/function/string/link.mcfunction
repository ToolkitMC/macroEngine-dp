# [1_21_6 overlay — click_event / hover_event syntax]
# macro:string/link
# INPUT: macro:input { target, text, color, url }
$tellraw $(target) {"text":"$(text)","color":"$(color)","underlined":true,"click_event":{"action":"open_url","url":"$(url)"},"hover_event":{"action":"show_text","value":{"text":"$(url)","color":"gray"}}}
