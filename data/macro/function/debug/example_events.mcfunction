# ============================================
# macro:debug/example_events
# ============================================
# Event sistemini showen example debug functionu.
# Run with /function macro:debug/example_events.
# ============================================

tellraw @a[tag=macro.debug] {"text":"[DEBUG] event sistemi test basliyor...","color":"yellow"}

# ─── on_join event kaydi ─────────────────────────────────
data modify storage macro:input event set value "on_join"
data modify storage macro:input func set value "macro:debug/internal/on_join_handler"
function macro:event/register with storage macro:input {}

# ─── on_kill event kaydi ─────────────────────────────────
data modify storage macro:input event set value "on_kill"
data modify storage macro:input func set value "macro:debug/internal/on_kill_handler"
function macro:event/register with storage macro:input {}

# ─── Set context and fire the on_join event ───────
# BUG FIX: "event_context set value {}" gecersiz — kok path kabul edilmez.
# BUG FIX: "event_context$(player)" → "event_context.player" (nokta eksikti)
data remove storage macro:engine event_context
data modify storage macro:engine event_context.player set value "TestPlayer"
data modify storage macro:engine event_context.reason set value "debug_test"

# ─── Event'i atesle ──────────────────────────────────────
data modify storage macro:input event set value "on_join"
function macro:event/fire with storage macro:input {}
# BUG FIX: "data modify storage macro:input set value {}" gecersiz — tek tek clear
data remove storage macro:input event

tellraw @a[tag=macro.debug] {"text":"[DEBUG] example_events tamamlandi.","color":"green"}
