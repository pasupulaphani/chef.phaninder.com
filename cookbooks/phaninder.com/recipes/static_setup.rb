#
# Cookbook Name:: phaninder.com
# Recipe:: static_setup
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

group "www-data" do
  members ["nginx", "deploy"]
  append true
end

directory "#{node[:myblog][:static_root]}/#{node[:myblog][:static]}" do
	owner "nginx"
  group "www-data"
  mode  00674
  action :create
  recursive true
end

bash "make_static_root_executable" do
  user "root"
  cwd node[:myblog][:static_root]
  code <<-EOH
    chmod a+x *
  EOH
end

template "/etc/nginx/sites-available/#{node[:myblog][:static]}" do
	source "nginx_sites/#{node[:myblog][:static]}.erb"
	owner "root"
	group "root"
	mode 00644
	notifies :restart, 'service[nginx]'
end

link "/etc/nginx/sites-enabled/#{node[:myblog][:static]}" do
  filename = "/etc/nginx/sites-available/#{node[:myblog][:static]}"
  to filename
  only_if { File.exists? filename }
end

service "nginx" do
	supports :restart => true, :status => true
	action [:enable, :start]
end