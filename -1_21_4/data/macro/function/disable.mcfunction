# macro:disable [-1_21_4 overlay]
# Overrides base for pack_format ≤ 61 (≤ 1.21.4).
# Uses legacy clickEvent syntax.

playsound minecraft:block.note_block.pling master @s ~ ~ ~ 4 2

function macro:disable/main

tellraw @s [{"text":"To restart:"}," ",{"text":"Click!","clickEvent":{"action":"run_command","value":"/function macro:load"},"color":"aqua","bold":true,"italic":false}]
