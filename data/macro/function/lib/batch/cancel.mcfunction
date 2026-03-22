# ─────────────────────────────────────────────────────────────────
# macro:lib/batch/cancel
# flush yapılmamış bir batch'i iptal eder.
# Zaten flush edilmiş ve queue'ya girmiş item'lar iptal edilemez
# (process_queue'dan geri çekme mevcut değil — bu AME'nin tasarım kısıtı).
#
# INPUT (storage macro:input):
#   id → batch kimliği
# ─────────────────────────────────────────────────────────────────

function macro:lib/batch/internal/cancel_exec with storage macro:input {}
