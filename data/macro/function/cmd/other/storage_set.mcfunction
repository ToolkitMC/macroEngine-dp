# ============================================
# macro:cmd/other/storage_set
# ============================================

$execute at @s run data modify storage $(storageName) $(nbt) set $(actionType) $(value)
