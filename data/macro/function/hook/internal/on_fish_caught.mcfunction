# macro:hook/internal/on_fish_caught
# @s = balık tutan oyuncu
scoreboard players add @s macro.hook_fish 1
advancement revoke @s only macro:hook/fish_caught
