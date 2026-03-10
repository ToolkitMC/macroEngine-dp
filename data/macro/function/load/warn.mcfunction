# macro:load/warn — Called if macro:load is run before ame_load is active
tellraw @s ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"⚠ ","color":"yellow"},{"text":"Engine not loaded yet. Run ","color":"dark_gray"},{"text":"/reload","color":"aqua","underlined":true,"click_event":{"action":"run_command","command":"/reload"}},{"text":" first.","color":"dark_gray"}]
