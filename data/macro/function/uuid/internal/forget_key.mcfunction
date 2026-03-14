# ============================================================
# macro:uuid/internal/forget_key  [MACRO FONKSİYON]
# uuid_cache'den belirtilen anahtarı siler
#
# Çağırma: function macro:uuid/internal/forget_key with storage macro:input
# $(key) = silinecek anahtar adı
# ============================================================
$data remove storage macro:engine uuid_cache.$(key)
