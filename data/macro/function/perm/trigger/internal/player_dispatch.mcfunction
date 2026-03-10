# ============================================
# macro:perm/trigger/internal/player_dispatch
# ============================================
# Belirli bir oyuncu (@s) için isimli trigger'ın bind listesini iterate eder.
# Skorunu kaydeder, sıfırlar, re-enable eder; ardından bind'leri dener.
#
# INPUT (makro): storage macro:engine _pt_tick_ctx = {name:"<trigger_adi>"}
# Çağrı: AS @s (the player)
# ============================================

# Bu oyuncunun trigger skorunu kaydet
$scoreboard players operation $ptd_val macro.tmp = @s $(name)

# Sıfırla ve yeniden aktif et
$scoreboard players set @s $(name) 0
$scoreboard players enable @s $(name)

# Bind listesi boşsa dur
$execute unless data storage macro:engine perm_triggers.$(name)[0] run return 0

# Bind listesini geçici kopyaya al (orijinal bozulmasın)
$data modify storage macro:engine _ptd_binds set from storage macro:engine perm_triggers.$(name)

# Iterate
function macro:perm/trigger/internal/check_bind
data remove storage macro:engine _ptd_binds
data remove storage macro:engine _ptd_current
