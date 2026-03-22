# ─────────────────────────────────────────────────────────────────
# macro:math/vec/normalize
# Vektörü birim uzunluğa ölçekler (×1000 fixed-point).
# Uzunluk math/distance3d ile hesaplanır (floor(√(x²+y²+z²))).
# Sonuçlar ×1000 — yön vektörü olarak kullanmadan önce /1000 yapın.
#
# INPUT:  x, y, z
# OUTPUT: macro:output {x, y, z, length}
#         length=0 ise sıfır vektör — x,y,z=0 döner.
# ─────────────────────────────────────────────────────────────────

function macro:math/vec/internal/normalize_exec with storage macro:input {}
