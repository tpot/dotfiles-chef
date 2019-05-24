#
# Cookbook:: default
# Recipe:: scripts
#
# Copyright:: 2019, The Authors, All Rights Reserved.

# Scripts

directory "#{ENV['HOME']}/bin" do
  mode 0755
  action :create
end

["findf", "findch"].each do |script|
  cookbook_file "#{ENV['HOME']}/bin/#{script}" do
    source "scripts/#{script}"
    mode 0755
  end
end
