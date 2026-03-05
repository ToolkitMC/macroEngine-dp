# ============================================
# ame_load:load/scoreboards
# ============================================
# Creates all scoreboard objectives.
# If already present, "objectives add" silently fails — guvenli.
# ============================================

scoreboard objectives add macro.tmp dummy
scoreboard objectives add macro.time dummy
scoreboard objectives add macro_menu trigger
scoreboard objectives add macro_run trigger
scoreboard objectives add macro_action trigger
scoreboard objectives add macro.dialog_load dummy
# Tick-safe guard: entity basina son islenen epoch valueini tutar
scoreboard objectives add macro.tick_guard dummy
# Health objective: required for progress_bar_self (Auto-HUD)
scoreboard objectives add health health {"text":"❤","color":"red"}
# Version tracking: $v_major/$v_minor/$v_patch + sentinel $ame_ver_set
# See: ame_load:load/internal/version_set (writer)
# ame_load:load/internal/validate (reader / conflict check)
scoreboard objectives add ame.pre_version dummy
