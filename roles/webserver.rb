name "webserver"
description "reverse proxy for my app"
run_list "recipe[nginx]"
override_attributes({
  :nginx => {
  	:version           => "1.4.4",
  	:repo_source       => "nginx",
    :status            => { :port => "8090" },
    :default_site_enabled => false,
    :proxy_read_timeout => 150,
    :gzip_http_version  => "1.1",
    :gzip_comp_level    => "6",
    :gzip_vary          => "on",
    :gzip_buffers       => "16 8k",
    :gzip_disable       => "MSIE [1-6]\.(?!.*SV1)"
  }
})