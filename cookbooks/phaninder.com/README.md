phaninder.com Cookbook
======================

Configure and deploy phaninder.com

Requirements
------------
### Cookbooks
The following cookbooks are direct dependencies because they're used for common "default" functionality.

- nginx
- nodejs

### Platforms
The following platforms are supported and tested:

- Ubuntu 10.04, Ubuntu 12.04, Ubuntu 12.10
- CentOS 6.4
- AMI

Other Debian and RHEL family distributions are assumed to work.

Attributes
----------
#### phaninder.com::default
TODO: 
* myblog['install_method'] = tar.gz or github
* myblog['version'] - release version to install
* myblog['src_url'] - download location (source tarball) or github url
* myblog['dir'] - location where to deploy, default /var/www

Usage
-----
#### phaninder.com::default
Include the recipe on your node or role that fits how you wish to
install set up on your system per the recipes section above. Modify the
attributes as required in your role to change how various
configuration is applied per the attributes section above. In general,
override attributes in the role should be used when changing
attributes.

Use only one of the recipes, default or source.

e.g.
Just include `phaninder.com` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[phaninder.com]"
  ]
}
```


License and Authors
-------------------
- Author:: Phaninder Pasupula (<pasupulaphani@gmail.com>)
