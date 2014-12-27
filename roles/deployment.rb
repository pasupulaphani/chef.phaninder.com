name "deployment"
description "install deployment essentials"
run_list "recipe[git]", "recipe[deployer]"
override_attributes({
	:deployer => {
	  "ssh_keys" => [
    "your ssh-key"
  ]}
})