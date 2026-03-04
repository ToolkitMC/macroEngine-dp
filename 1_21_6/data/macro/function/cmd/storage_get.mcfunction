# [1_21_6 overlay — click_event / hover_event syntax]
# $(copy) removed — compound valueler JSON fordeki tirnak isaretlerini bozuyordu.
# Clipboard for nbt text component kullaniliyor (1.21.5+ destekli).
$tellraw @s [{"text":"[","color":"dark_gray"},{"text":"$(storage)","color":"gray","italic":true},{"text":"] ","color":"dark_gray"},{"nbt":"$(nbt)","storage":"$(storage)","color":"aqua","italic":false,"hover_event":{"action":"show_text","value":[{"text":"$(storage)","color":"gray","italic":true},{"text":"\n"},{"nbt":"$(nbt)","storage":"$(storage)","color":"white","italic":false}]},"click_event":{"action":"copy_to_clipboard","value":{"nbt":"$(nbt)","storage":"$(storage)"}}}]
