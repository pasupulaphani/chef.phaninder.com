name "firewall"
description "Load firewall rules we know works"
run_list "recipe[iptables]"
override_attributes({
})