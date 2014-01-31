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

if !node['phaninder.com'][:A_record]
	Chef::Application.fatal!("no A record is specified cannot continue check env scripts", 42) 
end

default[:myblog] = { 
	:main  => {
		:hostname    =>  'phaninder.com',
		:aliases     =>  ['www.phaninder.com'],
		:proxy_pass  =>  'http://phaninder.eu01.aws.af.cm/'
	},
	:secondary => {
		:proxy_pass  =>  'http://secondary.phaninder.com'
	},
	:static => {
		:hostname    =>  'static.phaninder.com',
		:root_dir    =>  '/var/www/',
		:proxy_pass  =>  'http://phaninder.eu01.aws.af.cm/'
	},
	:backup => {
		:hostname    =>  'backup.phaninder.com',
		:proxy_pass  =>  'http://backup-phaninder.eu01.aws.af.cm/'
	},
	:resume => {
		:proxy_pass  =>  'http://resume.phaninder.com'
	}
}

# statics you don't want to redirect or wnat to be under ur host
# Files you usually want to find in your path/host
# Reason we need to do this for the puropse of search engines
# redirections gives bad results/ may fail identification of actual host
# Files read by search engines : favicon.ico|robots.txt|humans.txt|phaninder.vcf
default[:myblog][:static_route_main]  = ["favicon.ico", "robots.txt", "humans.txt", "phaninder.vcf"]
