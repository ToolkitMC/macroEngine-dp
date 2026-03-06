# ============================================
# macro:flag/toggle_system — Sistem Flag lerini Ac/Kapat
# ============================================
# Kullanim:
# /function macro:flag/toggle_system {system:"time"}
# /function macro:flag/toggle_system {system:"queue"}
# /function macro:flag/toggle_system {system:"player"}
# /function macro:flag/toggle_system {system:"hud"}
# /function macro:flag/toggle_system {system:"admin"}
#
# Veya direkt scoreboard ile:
# /scoreboard players set #m_time macro.Flags 0   (devre disi)
# /scoreboard players set #m_time macro.Flags 1   (aktif)
# ============================================

# Mevcut degeri temp e kopyala
$scoreboard players operation #ftgl_sys macro.tmp = #m_$(system) macro.Flags

# Toggle: 1 ise 0, 0 ise 1 yap
$execute if score #ftgl_sys macro.tmp matches 1 run scoreboard players set #m_$(system) macro.Flags 0
$execute if score #ftgl_sys macro.tmp matches 0 run scoreboard players set #m_$(system) macro.Flags 1

# Set bittikten SONRA yeni durumu goster
$tellraw @s [{"text":"[MacroEngine] ","color":"gold","bold":true},{"text":"$(system)","color":"yellow"},{"text":" sistemi toggle edildi. Yeni durum: "},{"score":{"name":"#m_$(system)","objective":"macro.Flags"},"color":"green"}]
