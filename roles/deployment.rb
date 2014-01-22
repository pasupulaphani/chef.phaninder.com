name "deployment"
description "install deployment essentials"
run_list "recipe[git]", "recipe[deployer]"
override_attributes({
	:deployer => {
	  "ssh_keys" => [
    "ssh-rsa +kpUAohcU7LMT5cu5peXxa9VD1KHizD0OZYsTEwivjl+Y//+56iknFVfT3B3b7a9++WuLiJFxWaVB7YWNGD5Aq4BIaFLRlChitkp pasupulaphani@gmail.com"
  ]}
})