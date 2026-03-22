# macro:hook/on_dimension_change
# Advancement reward: changed_dimension tetiklendiğinde çalışır.
# @s = boyut değiştiren oyuncu

advancement revoke @s only macro:hook/dimension_change
scoreboard players add @s macro.hook_dim_changed 1
