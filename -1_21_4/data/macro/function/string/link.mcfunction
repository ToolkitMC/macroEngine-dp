# macro:string/link — eski sozdizimi (1.21.4 and oncesi)
# INPUT: macro:input { target, text, color, url }
$tellraw $(target) {"text":"$(text)","color":"$(color)","underlined":true,"clickEvent":{"action":"open_url","value":"$(url)"},"hoverEvent":{"action":"show_text","value":{"text":"$(url)","color":"gray"}}}
