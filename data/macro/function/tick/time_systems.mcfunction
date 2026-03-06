# ============================================
# macro:tick/time_systems — Zaman ve Sayaç Sistemleri
# ============================================
# Flag: #m_time macro.Flags
# - $epoch macro.time: mutlak tick sayacı (cooldown için)
# - $tick macro.tmp: son sync_tick'ten beri geçen tick'ler (1s reset interval)
# ============================================

scoreboard players add $epoch macro.time 1
scoreboard players add $tick macro.tmp 1

# BUG FIX v3.0: Reset recursion counter every tick
scoreboard players set $pq_depth macro.tmp 0
