name "appserver"
description "nodejs as application server"
run_list "recipe[nodejs]"
override_attributes({
  :nodejs => {
    :install_method           => "binary"
  }
})