# ============================================================
# macro:uuid/internal/recall_arr_read  [MACRO FONKSİYON]
# Önbellekten UUID int array'ini okur
#
# Çağırma: function macro:uuid/internal/recall_arr_read with storage macro:input
# $(key) = anahtar adı
# ============================================================
$data modify storage macro:input value set from storage macro:engine uuid_cache.$(key).arr
