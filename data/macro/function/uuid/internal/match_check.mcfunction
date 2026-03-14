# ============================================================
# macro:uuid/internal/match_check  [MACRO FONKSİYON]
# Mevcut UUID string'ini _match_target ile dinamik olarak karşılaştırır
#
# Çağırma: function macro:uuid/internal/match_check with storage macro:input
# $(value) = from_entity'nin yazdığı mevcut UUID string'i
# ============================================================
$execute if data storage macro:uuid {_match_target:"$(value)"} run function macro:uuid/internal/match_fire with storage macro:input
