#
# Cookbook Name:: ntp
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#
package 'ntp' do
  action :install
end

template '/etc/ntp.conf' do
  source 'ntp.conf.erb'
end

service 'ntpd' do
  action [:enable, :start]
end
