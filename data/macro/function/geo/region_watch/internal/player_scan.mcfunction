# macro:geo/region_watch/internal/player_scan
# @s = kontrol edilecek oyuncu
# Koordinatları storage'a okur, sonra tüm bölgeleri iterate eder.

data modify storage macro:engine _rw_iter set from storage macro:engine region_watches

# Oyuncu koordinatlarını _rw_player'a yaz (int truncation, geo modülüyle tutarlı)
execute store result storage macro:engine _rw_player.x int 1 run data get entity @s Pos[0]
execute store result storage macro:engine _rw_player.y int 1 run data get entity @s Pos[1]
execute store result storage macro:engine _rw_player.z int 1 run data get entity @s Pos[2]

function macro:geo/region_watch/internal/region_loop

data remove storage macro:engine _rw_iter
data remove storage macro:engine _rw_player
