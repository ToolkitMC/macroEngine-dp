# macro:string/hover_text — eski sozdizimi (1.21.4 and oncesi)
# INPUT: macro:input { target, text, color, hover, hover_color }
$tellraw $(target) {"text":"$(text)","color":"$(color)","hoverEvent":{"action":"show_text","value":{"text":"$(hover)","color":"$(hover_color)"}}}
