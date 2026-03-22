# ─────────────────────────────────────────────────────────────────
# macro:math/vec/angle_between
# İki vektör arasındaki açıyı derece cinsinden döner.
# cos(θ) = dot(A,B) / (|A| × |B|)  →  θ = arccos(...)
# Arccos için ×1000 fixed-point cos tablosu kullanılır.
#
# INPUT:  ax, ay, az, bx, by, bz
# OUTPUT: macro:output result (0–180, integer derece)
#         Sıfır vektör durumunda result=0.
# ─────────────────────────────────────────────────────────────────

function macro:math/vec/internal/angle_exec with storage macro:input {}
