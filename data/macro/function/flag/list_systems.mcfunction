# ============================================
# macro:flag/list_systems — Sistem Flag Durumlarını Listele
# ============================================
# Tüm tick sistemi flag'lerinin durumunu gösterir
# Kullanım: /function macro:flag/list_systems
# ============================================

tellraw @s [{"text":"\n=== MacroEngine Sistem Flag Durumları ===","color":"gold","bold":true}]
tellraw @s [{"text":"• ","color":"gray"},{"text":"Zaman Sistemleri (#m_time): ","color":"yellow"},{"score":{"name":"#m_time","objective":"macro.Flags"},"color":"green"}]
tellraw @s [{"text":"• ","color":"gray"},{"text":"Kuyruk Sistemleri (#m_queue): ","color":"yellow"},{"score":{"name":"#m_queue","objective":"macro.Flags"},"color":"green"}]
tellraw @s [{"text":"• ","color":"gray"},{"text":"Oyuncu Sistemleri (#m_player): ","color":"yellow"},{"score":{"name":"#m_player","objective":"macro.Flags"},"color":"green"}]
tellraw @s [{"text":"• ","color":"gray"},{"text":"HUD Sistemleri (#m_hud): ","color":"yellow"},{"score":{"name":"#m_hud","objective":"macro.Flags"},"color":"green"}]
tellraw @s [{"text":"• ","color":"gray"},{"text":"Admin Sistemleri (#m_admin): ","color":"yellow"},{"score":{"name":"#m_admin","objective":"macro.Flags"},"color":"green"}]
tellraw @s [{"text":"=====================================\n","color":"gold"}]
