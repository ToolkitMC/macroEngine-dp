# macro:cmd/other/internal/display  [-1_21_4 overlay]
# Overrides base for pack_format ≤ 61 (≤ 1.21.4).
# Compound clipboard click_event is 1.21.5+ only — omitted.
$tellraw @s [{"text":"[","color":"dark_gray"},{"text":"$(storage)","color":"gray","italic":true},{"text":"] ","color":"dark_gray"},{"nbt":"$(nbt)","storage":"$(storage)","color":"aqua","italic":false,"hoverEvent":{"action":"show_text","value":[{"text":"$(storage)","color":"gray","italic":true},{"text":"\n"},{"nbt":"$(nbt)","storage":"$(storage)","color":"white","italic":false}]}}]
