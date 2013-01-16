#
# Cookbook Name:: geo-lite
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

url  = node['geo-lite']['city']['url']
dir  = node['geo-lite']['city']['dir']

cache_dir             = Chef::Config[:file_cache_path]
download_destination  = File.join(cache_dir, "GeoLiteCity.dat.gz")
unpack_destination    = File.join(cache_dir, "GeoLiteCity.dat")
copy_destination      = File.join(dir, "GeoLiteCity.dat")

remote_file download_destination do
  source(url)
  mode "0644"
  action :create_if_missing
end

execute "Extract geo lite city archive" do
  command "zcat #{download_destination} > #{unpack_destination}"
  creates unpack_destination
end

directory dir do
  owner "root"
  group "root"
  mode  "755"
  recursive true
end

execute "Install geo lite city" do
  command "cd #{cache_dir} && cp GeoLiteCity.dat #{copy_destination}"
  creates copy_destination
end

