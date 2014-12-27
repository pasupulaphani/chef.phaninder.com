name "production"
description "Production env"
# list cookbooks with constraints
# cookbook "myapp", "= 0.3.0"

default_attributes "phaninder.com" => { :A_record => '134.213.153.219' }