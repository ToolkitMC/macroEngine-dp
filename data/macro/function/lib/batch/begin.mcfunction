# ─────────────────────────────────────────────────────────────────
# macro:lib/batch/begin
# Yeni bir batch başlatır veya mevcut olanı temizler.
#
# INPUT (storage macro:input):
#   id          → batch kimliği
#   spread_over → kaç tick'e yayılacağı (varsayılan: 1)
# ─────────────────────────────────────────────────────────────────

function macro:lib/batch/internal/begin_exec with storage macro:input {}
