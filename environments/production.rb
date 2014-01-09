name "production"
description "Production env"
# list cookbooks with constraints
# cookbook "myapp", "= 0.3.0"

default_attributes "phaninder.com" => { :A_record => '174.129.242.238' }