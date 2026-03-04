# ============================================
# macro:player/init
# ============================================
# Called when a player first joins the server or on reset.
# INPUT: macro:input { player:"<playerName>" }
# ============================================

# Create top-level storage (if absent)
$execute unless data storage macro:engine players.$(player) run data modify storage macro:engine players.$(player) set value {}

# Coin: set to 0 only if absent (existing 0 is also preserved)
$execute unless data storage macro:engine players.$(player).coins run data modify storage macro:engine players.$(player).coins set value 0

# Level: set to 1 only if absent
$execute unless data storage macro:engine players.$(player).level run data modify storage macro:engine players.$(player).level set value 1

# XP: set to 0 only if absent
$execute unless data storage macro:engine players.$(player).xp run data modify storage macro:engine players.$(player).xp set value 0

# Online flag
$data modify storage macro:engine players.$(player).online set value 1b

# BUG FIX v2.4+: using $epoch (absolute) instead of $tick (0-20 cyclic)
# Record first-join epoch (only if absent)
$execute unless data storage macro:engine players.$(player).first_join_tick run execute store result storage macro:engine players.$(player).first_join_tick int 1 run scoreboard players get $epoch macro.time

# Update last-join epoch on every login
$execute store result storage macro:engine players.$(player).last_join_tick int 1 run scoreboard players get $epoch macro.time
