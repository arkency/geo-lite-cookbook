#
# Cookbook Name:: geo-lite
# Recipe:: country
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

url  = node['geo-lite']['country']['url']
dir  = node['geo-lite']['country']['dir']

cache_dir             = Chef::Config[:file_cache_path]
download_destination  = File.join(cache_dir, "GeoIP.dat.gz")
unpack_destination    = File.join(cache_dir, "GeoIP.dat")
copy_destination      = File.join(dir, "GeoIP.dat")

remote_file download_destination do
  source(url)
  mode "0644"
  action :create_if_missing
end

execute "Extract geo lite country archive" do
  command "zcat #{download_destination} > #{unpack_destination}"
  creates unpack_destination
end

directory dir do
  owner "root"
  group "root"
  mode  "755"
  recursive true
end

execute "Install geo lite country" do
  command "cd #{cache_dir} && cp GeoIP.dat #{copy_destination}"
  creates copy_destination
end

