# macro:geo/region_watch/internal/tick_scan
# hook/internal/tick_scan'den çağrılır (patch gerektirir).
# region_watches doluysa her oyuncu için tüm bölgeleri kontrol eder.

execute unless data storage macro:engine region_watches run return 0

data modify storage macro:engine _rw_watch_list set from storage macro:engine region_watches
execute as @a run function macro:geo/region_watch/internal/player_scan
data remove storage macro:engine _rw_watch_list
