# ============================================
# macro:string/header
# ============================================
# Sends a decorative header line.
# Bold text framed with separator characters.
# For section titles, menu headings and separators
# to draw attention.
#
# INPUT: macro:input { target:"<player_or_selector>", text:"<baslik>", color:"<color>" }
#
# EXAMPLE:
# data modify storage macro:input target set value "@a"
# data modify storage macro:input text set value "Envanter"
# data modify storage macro:input color set value "gold"
# function macro:string/header with storage macro:input {}
# Output: ◆──── Inventory ────◆  (gold color, bold)
# ============================================

$tellraw $(target) [{"text":"◆── ","color":"$(color)"},{"text":"$(text)","color":"$(color)","bold":true},{"text":" ──◆","color":"$(color)"}]
