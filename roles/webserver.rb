name "webserver"
description "reverse proxy for my app"
run_list "recipe[nginx]"
override_attributes({
  :nginx => {
  	:version => "1.4.4",
  	:repo_source => "nginx",
    :status => { :port => "8090" }
  }
})