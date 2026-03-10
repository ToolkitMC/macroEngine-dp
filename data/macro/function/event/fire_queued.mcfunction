# ============================================
# macro:event/fire_queued
# ============================================
# Fires the event after the specified delay instead of immediately.
# Use to spread current tick load or for delayed triggering.
#
# BUG FIX v3.2: _fdeferred yerine event adi dogrudan queue item'a
# gomulur. Boylece multiple fire_queued calls within the same tick
# will not overwrite each other's event name.
#
# INPUT: macro:input { event:"<event_name>", delay:<tick> }
#
# EXAMPLE:
# data modify storage macro:input event set value "on_round_end"
# data modify storage macro:input delay set value 60
# function macro:event/fire_queued with storage macro:input {}
# # 3 saniye sonra on_round_end firenecek
# ============================================

# Event kayitli degilse add to queueme
$execute unless data storage macro:engine events.$(event) run return 0

# event adini queue item'in fore gom — _fdeferred race condition yok
$data modify storage macro:engine queue append value {func:"macro:event/internal/fire_deferred", delay:$(delay), event:"$(event)"}
$tellraw @a[tag=macro.debug] ["",{"text":"[AME] ","color":"#00AAAA","bold":true},{"text":"event/fire_queued ","color":"aqua"},{"text":" → ","color":"dark_gray"},{"text":"$(event)","color":"aqua"}]
