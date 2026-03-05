# ============================================
# macro:cmd/other/action_run
# ============================================
# Belirtilen oyuncu OLARAK ve oyuncunun KONUMUNDA
# dynamically executes macro:cmd/$(type)
# INPUT: macro:input { player:"<n>", type:"<cmd_type>", arguments:"<with ...>" }
# ============================================

$execute as @a[name=$(player),limit=1] at @s run function macro:cmd/$(type) $(arguments)
