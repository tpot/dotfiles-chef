#
# Cookbook:: default
# Recipe:: bash
#
# Copyright:: 2019, The Authors, All Rights Reserved.

template "#{ENV['HOME']}/.bash_profile" do
  source "bash_profile.erb"
  mode 0644
end
