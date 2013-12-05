name "webserver"
description "reverse proxy for my app"
run_list "recipe[nginx]"
override_attributes({
  :nginx => {
    :status => { :port => "8090" }
  }
})