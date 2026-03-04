# Ilk event handler'ini run and listeden cikar
function macro:lib/internal/queue_run_func with storage macro:engine _event_tmp[0]
data remove storage macro:engine _event_tmp[0]
# Kalan if present, devam et
execute if data storage macro:engine _event_tmp[0] run function macro:event/internal/fire_next
