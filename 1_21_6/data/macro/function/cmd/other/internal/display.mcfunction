# [1_21_6 overlay — click_event / hover_event syntax]
# Do not call directly — other/storage_get is used by.
# INPUT (_sg): { storage:"<storage>", nbt:"<path>" }
# $(copy) kullanilmiyor — compound valueler JSON'u bozuyor.
# Clipboard and hover for nbt text component kullaniliyor.
$tellraw @s [{"text":"[","color":"dark_gray"},{"text":"$(storage)","color":"gray","italic":true},{"text":"] ","color":"dark_gray"},{"nbt":"$(nbt)","storage":"$(storage)","color":"aqua","italic":false,"hover_event":{"action":"show_text","value":[{"text":"$(storage)","color":"gray","italic":true},{"text":"\n"},{"nbt":"$(nbt)","storage":"$(storage)","color":"white","italic":false}]},"click_event":{"action":"copy_to_clipboard","value":{"nbt":"$(nbt)","storage":"$(storage)"}}}]
