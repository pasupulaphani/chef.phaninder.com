#
# Cookbook Name:: phaninder.com
# Definition:: set_site
#
# Copyright 2013,  
#

define :set_site, :enable => true do
  include_recipe "nginx"

  template "#{node['nginx']['dir']}/sites-available/#{params[:name]}" do
    source "nginx_sites/#{params[:name]}.erb"
    owner "root"
    group "root"
    mode 00644
    notifies :restart, 'service[nginx]'
  end

  nginx_site params[:name] do
    enable params[:enable]
  end
end