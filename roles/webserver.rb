name "webserver"
description "proxy server for my app"
run_list "recipe[nginx]"
override_attributes({
  :nginx => {
    :status => { :port => "8090" }
  }
})