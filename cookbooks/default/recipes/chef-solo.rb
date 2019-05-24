#
# Cookbook Name:: default
# Recipe:: chef-solo
#
# Copyright 2011,2019 Tim Potter
#
# Licensed under Apache2 license
#

# Configure chef-solo

directory "#{ENV['HOME']}/.chef" do
  action :create
  mode 0755
end

cookbook_file "#{ENV['HOME']}/.chef/solo.rb" do
  source "solo.rb"
  mode 0644
  notifies :run, 'execute[chef-solo]'
end

cookbook_file "#{ENV['HOME']}/.chef/node.json" do
  source "node.json"
  mode 0644
  notifies :run, 'execute[chef-solo]'
end

execute "chef-solo" do
  command "chef-solo -c #{ENV['HOME']}/.chef/solo.rb -j #{ENV['HOME']}/.chef/node.json"
  action :nothing
end
