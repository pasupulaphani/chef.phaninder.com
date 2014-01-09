name "development"
description "Creates a development env"
# list cookbooks with constraints
# cookbook "myapp", "= 0.3.0"

default_attributes "phaninder.com" => { :A_record => '10.11.12.13' }