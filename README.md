chef.phaninder.com
===============
> Infrastructure as code for phaninder.com

(It has reached a stage where I've to move a lot my cookbooks to private repo for security reason)
I still try to keep this public repo uptodate

My chef server
-------------------
This is a central workspace to place cookbooks, roles, ......

## Getting started
Cookbook versioning and dependencies are managed by berkshelf

To install Berksfile dependencies do ```berks install```


## Updating cookbooks

To update cookbooks and berkslock do ```berks vendor```

## Uploading cookbooks
To upload berks cookbooks try this 
```
knife upload berks-cookbooks/
```
Cookbooks from folder cookbooks can be uploaded via

```
kinfe cookbook upload --all
```
(beaware of false positives)


## Knife Configuration

Knife is the [command line interface](http://docs.opscode.com/knife.html) for Chef.

Configuration can be found under .chef/knife.rb.

New version of Knife has extend its support for chef-solo. See my [chef_solo repo](https://github.com/pasupulaphani/chef_solo)

## Troubleshoot

Command:

    kinfe cookbook upload --all
Error:

    rubygems/dependency.rb:298:in `to_specs': Could not find 'chef' (>= 0) among 47 total gem(s) (Gem::LoadError)
Fix:

    rvm reset


