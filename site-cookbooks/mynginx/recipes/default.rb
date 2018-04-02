#
# Cookbook Name:: mynginx
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "nginx" do
  action :install
end

service "nginx" do
  action [:enable, :start]
end

template "mypage.html" do
  path "/usr/share/nginx/html/mypage.html"
  source "mypage.html.erb"
  owner "root"
  group "root"
  mode "0644"
end