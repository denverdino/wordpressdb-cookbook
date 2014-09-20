#
# Cookbook Name:: wordpressdb
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "mysql::client"
include_recipe "mysql-chef_gem"
include_recipe "mysql::server"

mysql_connection_info = {
  :host     => 'localhost',
  :username => 'root',
  :password => node['mysql']['server_root_password']
}

mysql_database node['wordpress']['db_name'] do
  connection  mysql_connection_info
  action      :create
end

include_recipe 'iptables::default'
iptables_rule "port_mysql"
