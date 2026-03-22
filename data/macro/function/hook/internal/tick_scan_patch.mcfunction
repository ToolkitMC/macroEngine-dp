# ─────────────────────────────────────────────────────────────────
# PATCH — macro:hook/internal/tick_scan dosyasının sonuna eklenecek satırlar
# (mevcut dosyanın "# hero_of_the_village" bloğundan sonra)
# ─────────────────────────────────────────────────────────────────

# dimension_change — changed_dimension advancement tabanlı, score artışı
execute as @a[scores={macro.hook_dim_changed=1..}] run function macro:hook/internal/on_dimension_change
execute as @a[scores={macro.hook_dim_changed=1..}] run scoreboard players set @s macro.hook_dim_changed 0

# trade — traded_with_villager advancement tabanlı, score artışı
execute as @a[scores={macro.hook_traded=1..}] run function macro:hook/internal/on_trade
execute as @a[scores={macro.hook_traded=1..}] run scoreboard players set @s macro.hook_traded 0
