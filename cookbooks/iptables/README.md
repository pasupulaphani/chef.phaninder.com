iptables Cookbook
=================

configure and manage Iptables

Requirements
------------
### Cookbooks
No dependencies

### Platforms
The following platforms are supported and tested:

- CentOS 6.4

Other RHEL family distributions are assumed to work.

Attributes
----------
#### iptables::default
TODO:
* iptables['version'] - release version to install

Usage
-----
#### iptables::default

Just include `iptables` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[iptables]"
  ]
}
```

License and Authors
-------------------
- Author:: Phaninder Pasupula (<pasupulaphani@gmail.com>)

