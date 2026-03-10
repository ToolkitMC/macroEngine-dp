# ============================================
# macro:cmd/other/storage_reset
# ============================================

$data modify storage $(storageName) $(nbt) set value []
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"cmd/other/storage_reset ","color":"aqua"},{"text":"$(storageName)","color":"white"},{"text":".","color":"dark_gray"},{"text":"$(nbt)","color":"aqua"},{"text":" → []","color":"dark_gray"}]
