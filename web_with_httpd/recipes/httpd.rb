#
# Cookbook Name:: web_with_httpd
# Recipe:: default
#
# Copyright 2014, MIMOVRSTE Test
#
package 'httpd' do
  action :install
end

service 'httpd' do
  action [ :enable, :start ]
end

cookbook_file '/var/www/html/index.html' do
  source 'index.html'
  mode '0644'
end
