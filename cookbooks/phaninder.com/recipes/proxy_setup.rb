#
# Cookbook Name:: phaninder.com
# Recipe:: nginx_sites
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

### set_site definition
set_site node[:myblog][:main][:hostname] do
  enable true
end

### set /etc/hosts
hostsfile_entry node['phaninder.com'][:A_record] do
  hostname  node[:myblog][:main][:hostname]
  aliases   node[:myblog][:main][:aliases]
  action    :append
end