# ─────────────────────────────────────────────────────────────────
# macro:geo/region_watch/unregister
# Kayıtlı bir bölgeyi siler. Oyuncu durum skorları temizlenmez
# (bir sonraki tick_scan döngüsünde otomatik atlanır).
#
# INPUT (storage macro:input):
#   id → bölge kimliği
# ─────────────────────────────────────────────────────────────────

function macro:geo/region_watch/internal/unregister_exec with storage macro:input {}
