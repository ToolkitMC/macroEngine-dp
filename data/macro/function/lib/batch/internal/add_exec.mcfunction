# macro:lib/batch/internal/add_exec [MACRO]
# INPUT: $(id)
# func veya cmd field'ı varlık kontrolü makro dışında yapılıp
# ilgili append_func / append_cmd çağrılır — undefined $(func/cmd) önlenir.

$execute unless data storage macro:engine batches.$(id) run return 0

execute if data storage macro:input.func run function macro:lib/batch/internal/add_func with storage macro:input {}
execute unless data storage macro:input.func run execute if data storage macro:input.cmd run function macro:lib/batch/internal/add_cmd with storage macro:input {}
