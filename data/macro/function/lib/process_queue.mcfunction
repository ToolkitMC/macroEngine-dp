# ============================================
# macro:lib/process_queue
# ============================================
# Called every tick; decrements delay of queue[0].
# delay <= 0 olunca functionu runir and removes.
# BUG FIX v2.5: Ayni tick'te birden fazla delay=0 item if present, hepsi islenir.
# BUG FIX v3.0: $pq_depth via tick basina 256 ozyineleme limiti — stack overflow engeli.
# ============================================

# Ozyineleme depth checku
scoreboard players add $pq_depth macro.tmp 1
execute if score $pq_depth macro.tmp matches 257.. run return 0

execute unless data storage macro:engine queue[0] run return 0

execute store result score $qdel macro.tmp run data get storage macro:engine queue[0].delay

scoreboard players remove $qdel macro.tmp 1
execute store result storage macro:engine queue[0].delay int 1 run scoreboard players get $qdel macro.tmp

# delay <= 0 ise run, sil, and bir sonraki item for tekrar calis
execute if score $qdel macro.tmp matches ..0 run function macro:lib/internal/queue_fire
execute if score $qdel macro.tmp matches ..0 run function macro:lib/process_queue
