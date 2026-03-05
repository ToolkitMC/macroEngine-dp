# ============================================
# ame_load:load/internal/finalize
# ============================================
# Post-load integrity report. Called as the
# final step of all.mcfunction, after:
#   • global.loaded = 1b is set
#   • version scores are written (version_set)
#
# Responsibilities:
#   • test_block log (success slot Z=1601)
#   • Admin tellraw: version + score summary
#   • AME log buffer: final INFO entry
# ============================================

# ─── Test framework log block ─────────────────────────────
# Z=1601 : success slot (Z=~ = version conflict, see version_warn)
setblock ~ ~101 ~ minecraft:redstone_block
setblock ~ ~100 ~ minecraft:test_block[mode=log]{mode:"log",message:"✅ [AME] v1.0.5-pre6 loaded successfully."}
setblock ~ ~101 ~ minecraft:air
setblock ~ ~100 ~ minecraft:air


# ─── Admin summary (macro.debug tag) ─────────────────────
tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"aqua","bold":true},{"text":"v1.0.5-pre6 ","color":"green","bold":true},{"text":"ready · ame.pre_version → ","color":"dark_gray"},{"score":{"name":"$v_major","objective":"ame.pre_version"},"color":"yellow"},{"text":".","color":"dark_gray"},{"score":{"name":"$v_minor","objective":"ame.pre_version"},"color":"yellow"},{"text":".","color":"dark_gray"},{"score":{"name":"$v_patch","objective":"ame.pre_version"},"color":"yellow"}]

# ─── AME log buffer (INFO) ────────────────────────────────
data modify storage macro:input message set value "✅ All modules initialized. Engine ready."
data modify storage macro:input level set value "AME"
data modify storage macro:input color set value "green"
function macro:log/add with storage macro:input {}
data remove storage macro:input message
data remove storage macro:input level
data remove storage macro:input color
