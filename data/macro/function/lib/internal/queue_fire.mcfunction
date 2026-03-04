# Execute and remove the first queue element
# queue_run_head + queue_execute_first + queue_tick_all'in yerini alir
function macro:lib/internal/queue_run_func with storage macro:engine queue[0]
data remove storage macro:engine queue[0]
