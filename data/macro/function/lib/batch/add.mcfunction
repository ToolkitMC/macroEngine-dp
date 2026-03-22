# ─────────────────────────────────────────────────────────────────
# macro:lib/batch/add
# Batch kuyruğuna bir iş ekler.
#
# INPUT (storage macro:input):
#   id   → batch kimliği
#   func → çalıştırılacak fonksiyon (opsiyonel)
#   cmd  → çalıştırılacak komut (opsiyonel, func yoksa)
# ─────────────────────────────────────────────────────────────────

function macro:lib/batch/internal/add_exec with storage macro:input {}
