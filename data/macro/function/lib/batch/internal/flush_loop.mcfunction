# macro:lib/batch/internal/flush_loop
# _bfl_items'ı tüketir. Her item için:
#   delay = floor($bfl_idx * $bfl_spread / $bfl_total)
# hesaplanıp queue'ya eklenir.
# func veya cmd varlığı execute if data ile kontrol edilir.

execute unless data storage macro:engine _bfl_items[0] run return 0

# delay = floor(idx * spread / total)
scoreboard players operation $bfl_delay macro.tmp = $bfl_idx macro.tmp
scoreboard players operation $bfl_delay macro.tmp *= $bfl_spread macro.tmp
scoreboard players operation $bfl_delay macro.tmp /= $bfl_total macro.tmp

# Item'ı geçici storage'a al
data modify storage macro:engine _bfl_cur set from storage macro:engine _bfl_items[0]
data remove storage macro:engine _bfl_items[0]

# delay'i item'a yaz, sonra func/cmd'ye göre queue'ya ekle
execute store result storage macro:engine _bfl_cur.delay int 1 run scoreboard players get $bfl_delay macro.tmp

execute if data storage macro:engine _bfl_cur.func run function macro:lib/batch/internal/flush_queue_func with storage macro:engine _bfl_cur {}
execute unless data storage macro:engine _bfl_cur.func run execute if data storage macro:engine _bfl_cur.cmd run function macro:lib/batch/internal/flush_queue_cmd with storage macro:engine _bfl_cur {}

data remove storage macro:engine _bfl_cur
scoreboard players add $bfl_idx macro.tmp 1

function macro:lib/batch/internal/flush_loop
