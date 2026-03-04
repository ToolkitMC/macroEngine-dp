# macro:cmd/time_set — Oyun saatini set
# INPUT: macro:input { value:<int>|"day"|"noon"|"night"|"midnight"|"sunrise"|"sunset" }
# Tamsayi: tick cinsinden (0=gundogumu, 6000=ogle, 12000=gun batimi, 18000=gece yarisi)

$time set $(value)
