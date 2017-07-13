name "test"
description "test environment"
cookbook_versions({
  "nginx" => "= 0.1.0",
  "apt"   => "= 0.1.0"
})


override_attributes ({
  "nginx" => {
    "html_dir" => "/usr/share/nginx/html",
    "listen" => [ "80", "443"]
  },
  "mysql" => {
        "root_pass" => "root"
    }
})
