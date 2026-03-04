# macro:cmd/weather — Hava durumunu set
# INPUT: macro:input { type:"clear"|"rain"|"thunder", duration:<int> }
# duration: saniye cinsinden (0 = if present,yilan)

$weather $(type) $(duration)
