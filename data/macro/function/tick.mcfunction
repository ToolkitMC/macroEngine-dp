# ============================================
# macro:tick — Her tick'te çalışır (Flag Kontrollü Sistem)
# ============================================
# Bu dosya sistemleri flag'lere göre kategorize edilmiş şekilde çağırır
# Flag Değerleri (macro.Flags scoreboard'u):
# - #m_time: Zaman ve sayaç sistemleri (epoch, tick)
# - #m_queue: Kuyruk işleme sistemleri
# - #m_player: Oyuncu tetikleyici sistemleri (menu, run, action)
# - #m_hud: Otomatik HUD sistemleri (progress bar)
# - #m_admin: Admin ve debug sistemleri
# 
# Flag = 1: Sistem aktif
# Flag = 0: Sistem devre dışı (disabled fonksiyonu çalışır)
# ============================================

execute unless entity @a run return 0

execute unless data storage macro:engine global{loaded:1b} run return 0

# ── Zaman Sistemleri ──
execute if score #m_time macro.Flags matches 1 run function macro:tick/time_systems
execute if score #m_time macro.Flags matches 0 run function macro:tick/disabled

# ── Kuyruk Sistemleri ──
execute if score #m_queue macro.Flags matches 1 run function macro:tick/queue_systems
execute if score #m_queue macro.Flags matches 0 run function macro:tick/disabled

# ── Oyuncu Sistemleri ──
execute if score #m_player macro.Flags matches 1 run function macro:tick/player_systems
execute if score #m_player macro.Flags matches 0 run function macro:tick/disabled

# ── HUD Sistemleri ──
execute if score #m_hud macro.Flags matches 1 run function macro:tick/hud_systems
execute if score #m_hud macro.Flags matches 0 run function macro:tick/disabled

# ── Admin Sistemleri ──
execute if score #m_admin macro.Flags matches 1 run function macro:tick/admin_systems
execute if score #m_admin macro.Flags matches 0 run function macro:tick/disabled
