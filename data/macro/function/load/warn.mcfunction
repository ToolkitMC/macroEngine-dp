execute if data storage macro:engine global{loaded:1b} run return 0

# Load directly if no player is online
execute unless entity @a run return run function macro:load

# BUG FIX v3.5:
# 1. CRLF line endings → LF
# 2. Reversed yes/no buttons and /skin search ea7 test remnant removed
# 3. BUG FIX v3.6: /kick and /disconnect do not work from dialog run_command.
# Using notice type instead of confirmation — a single "Load" button is sufficient.
dialog show @a {"type":"minecraft:notice","title":{"text":"⚠ Warning","color":"yellow","bold":true},"body":{"type":"minecraft:plain_message","contents":{"text":"This world contains experimental features.\nIt is recommended to back up before continuing."}},"action":{"label":{"text":"Understood, Load","color":"green","bold":true},"action":{"type":"run_command","command":"/function macro:load"}}}
