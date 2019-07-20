#
# Cookbook:: test_3
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

template '/var/tmp/test_3_details.sh' do
  source 'details.sh.erb'
  variables(
    name: node['test_3']['name'],
    channel: node['test_3']['channel'],
    install_version: node['test_3']['install_version']
  )
end
