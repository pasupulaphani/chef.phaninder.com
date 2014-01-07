chef_server repo for phaninder.com
===============

My chef server
-------------------
This is a central workspace to place cookbooks, roles, ......


Knife Configuration
-------------------
Knife is the [command line interface](http://docs.opscode.com/knife.html) for Chef. 
Can be found under .chef/knife.rb.

New version of Knife has extendec its support for chef-solo. See my [chef_solo repo](https://github.com/pasupulaphani/chef_solo)

Cookbooks
---------
Nginx
    -- dependencies:
    apt  bluepill  build-essential  chefignore  nginx  ohai  rsyslog  runit  yum
    
Node
    -- dependencies:
    

Roles
-----
Roles can be found in chef_server/roles directory.

webserver
    proxy server for my app

