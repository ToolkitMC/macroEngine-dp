# ============================================
# macro:cmd/other/storage_set
# ============================================

$execute at @s run data modify storage $(storageName) $(nbt) set $(actionType) $(value)
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/other/storage_set ","color":"aqua"},{"text":"$(storageName)","color":"white"},{"text":".","color":"dark_gray"},{"text":"$(nbt)","color":"aqua"},{"text":" ← ","color":"dark_gray"},{"text":"$(value)","color":"green"}]
