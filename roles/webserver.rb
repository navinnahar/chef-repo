name "webserver"
description "A role to configure our front-line web servers"
run_list "recipe[nginx]", "recipe[apt]"
env_run_lists "_default" => [ ], "production" => ["recipe[nginx_prod]"], "test" => ["recipe[nginx]"]
