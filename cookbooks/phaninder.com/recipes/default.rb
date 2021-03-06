#
# Cookbook Name:: phaninder.com
# Recipe:: default
#
# Copyright 2013, phaninder.com
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe "phaninder.com::static_setup"
include_recipe "phaninder.com::proxy_setup"
include_recipe "phaninder.com::backup_setup"


include_recipe "users" # not req ; using deploy

# Note this LWRP searches the users data bag for the "nginx" group attribute,
# and adds those users to a Unix security group "nginx"
# users_manage "nginx" do
# 	group_id 2300
# end

# this is to tell nginx to render file types
# if not they will be returned as files.
cookbook_file "#{node['nginx']['dir']}/mime.types" do
  source 'mime.types'
  owner  'root'
  group  'root'
  mode   '0644'
  notifies :reload, 'service[nginx]'
end