# ============================================
# ame_load:load/internal/version_warn
# ============================================
# Called by validate when ame.pre_version scores
# do not match expected values (1, 0, 5).
#
# Responsibilities:
#   • test_block log → test framework / CI output
#   • Broadcast tellraw to all players (+ debug details)
#   • AME log buffer entry (WARN level)
#
# After this returns, validate.mcfunction issues
# "return 0" → entire load is cancelled.
# ============================================

# ─── Test framework log block ─────────────────────────────
# Z=~ : version conflict slot (Z=~ = success, see finalize)
setblock ~ ~101 ~ minecraft:redstone_block
setblock ~ ~100 ~ minecraft:test_block[mode=log]{mode:"log",message:"❌ [AME] Version conflict detected. Expected v1.0.5-pre6. Run /reload in-game for details."}

setblock ~ ~101 ~ minecraft:air
setblock ~ ~100 ~ minecraft:air

# ─── Broadcast warning (all players) ──────────────────────
tellraw @a ["",{"text":"❌ ","color":"red"},{"text":"[AME] ","color":"aqua","bold":true},{"text":"Version conflict! ","color":"red","bold":true},{"text":"Expected ","color":"gray"},{"text":"v1.0.5-pre6","color":"yellow","bold":true},{"text":" — stored scores do not match.","color":"gray"}]
tellraw @a ["",{"text":"   ↳ ","color":"dark_gray"},{"text":"Run ","color":"gray"},{"text":"/reload","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/reload"}},{"text":" to reinitialize AME.","color":"gray"}]

# ─── Debug channel: display current score values ──────────
tellraw @a[tag=macro.debug] ["",{"text":"[AME/DEBUG] ","color":"aqua"},{"text":"ame.pre_version → ","color":"dark_gray"},{"text":"$v_major=","color":"gray"},{"score":{"name":"$v_major","objective":"ame.pre_version"},"color":"yellow"},{"text":" $v_minor=","color":"gray"},{"score":{"name":"$v_minor","objective":"ame.pre_version"},"color":"yellow"},{"text":" $v_patch=","color":"gray"},{"score":{"name":"$v_patch","objective":"ame.pre_version"},"color":"yellow"},{"text":" (expected: 1 0 5)","color":"red"}]

# ─── AME log buffer (WARN) ────────────────────────────────
data modify storage macro:input message set value "❌ Version mismatch — expected v1.0.5-pre6. Load aborted."
function macro:log/warn with storage macro:input {}
data remove storage macro:input message
