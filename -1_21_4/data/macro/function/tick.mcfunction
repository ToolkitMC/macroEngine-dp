# ============================================
# macro:tick — Her tick'te çalışır (Flag Kontrollü Sistem)
# ============================================
# overlay: -1_21_4 (pack_format 48-61)
# ============================================

execute unless entity @a run return 0
execute unless data storage macro:engine global{loaded:1b} run return 0

# -- Zaman Sistemleri --
execute if score #m_time macro.Flags matches 1 run function macro:tick/time_systems
execute if score #m_time macro.Flags matches 0 run function macro:tick/disabled

# -- Kuyruk Sistemleri --
execute if score #m_queue macro.Flags matches 1 run function macro:tick/queue_systems
execute if score #m_queue macro.Flags matches 0 run function macro:tick/disabled

# -- Oyuncu Sistemleri --
execute if score #m_player macro.Flags matches 1 run function macro:tick/player_systems
execute if score #m_player macro.Flags matches 0 run function macro:tick/disabled

# -- HUD Sistemleri --
execute if score #m_hud macro.Flags matches 1 run function macro:tick/hud_systems
execute if score #m_hud macro.Flags matches 0 run function macro:tick/disabled

# -- Admin Sistemleri --
execute if score #m_admin macro.Flags matches 1 run function macro:tick/admin_systems
execute if score #m_admin macro.Flags matches 0 run function macro:tick/disabled
