# ============================================
# macro:tick/admin_systems — Admin ve Debug Sistemleri
# ============================================
# Flag: #m_admin macro.Flags
# - Admin tag ve debug işlemleri
# - Admin yetkilerini etkinleştirme
# ============================================

tag @a[tag=macro.admin] add macro.debug
scoreboard players enable @a[tag=macro.admin] macro_menu
scoreboard players enable @a[tag=macro.admin] macro_action
scoreboard players enable @a[tag=macro.admin] macro_run
