scoreboard objectives add macro.tmp dummy
scoreboard objectives add macro.time dummy
scoreboard objectives add macro_menu trigger
scoreboard objectives add macro_run trigger
scoreboard objectives add macro_action trigger
scoreboard objectives add macro.dialog_load dummy
scoreboard objectives add macro.tick_guard dummy
scoreboard objectives add health health {"text":"❤","color":"red"}
scoreboard objectives add ame.pre_version dummy
scoreboard objectives add macro.pid dummy

scoreboard objectives add macro.Flags dummy {"text":"Macro Flags","color":"gold"}

scoreboard players set #m_time macro.Flags 1
scoreboard players set #m_queue macro.Flags 1
scoreboard players set #m_player macro.Flags 1
scoreboard players set #m_hud macro.Flags 1
scoreboard players set #m_admin macro.Flags 1

# Wand modülü — carrot_on_a_stick sağ-tık tracker
scoreboard objectives add macro.rightClick minecraft.used:minecraft.carrot_on_a_stick

# Hook modülü scoreboardları
scoreboard objectives add macro.hook_online dummy
# BUGFIX: reload sonrası online oyuncular yeni join gibi tetiklenmesin
scoreboard players set @a macro.hook_online 1
scoreboard objectives add macro.hook_deaths deathCount
# NOT: placed_blocks genel bir statistic değil — dummy olarak kullanılmalı
scoreboard objectives add macro.hook_placed dummy
scoreboard objectives add macro.hook_lvl dummy
scoreboard objectives add macro.hook_lvl_new dummy
# Yeni hook scoreboardları
scoreboard objectives add macro.hook_sneak dummy
scoreboard objectives add macro.hook_sprint dummy
scoreboard objectives add macro.hook_elytra dummy
# block_break — item_durability_changed advancement tabanlı
scoreboard objectives add macro.hook_tool_used dummy
# item_use, entity_kill advancement tabanlı
scoreboard objectives add macro.hook_item_used dummy
scoreboard objectives add macro.hook_entity_killed dummy
# using_item, killed_by_arrow, hero_of_the_village
scoreboard objectives add macro.hook_using_item dummy
scoreboard objectives add macro.hook_killed_by_arrow dummy
scoreboard objectives add macro.hook_hero_of_the_village dummy

# geo/region_watch — enter/leave durum takibi için scoreboard gerekmez (entity tag kullanır)

# hook/dimension_change — changed_dimension advancement tabanlı
scoreboard objectives add macro.hook_dim_changed dummy

# hook/trade — traded_with_villager advancement tabanlı
scoreboard objectives add macro.hook_traded dummy
