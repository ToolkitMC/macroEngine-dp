# macro:hook/on_trade
# Advancement reward: traded_with_villager tetiklendiğinde çalışır.
# @s = takas yapan oyuncu

advancement revoke @s only macro:hook/trade
scoreboard players add @s macro.hook_traded 1
