gem_package "yajl-ruby-1.1.0" do
  package_name 'yajl-ruby'
  action :remove
  gem_binary 'c:\opscode\chefdk\embedded\bin\gem'
  version '1.1.0'
end

remote_file "#{Chef::Config[:file_cache_path]}/yajl-ruby-1.2.1-x86-mingw32.gem" do
  action :create_if_missing
  checksum node['chefdk_windows_bootstrap']['yajl_ruby_checksum']
  source 'https://s3-us-west-1.amazonaws.com/nadtshare/yajl-ruby-1.2.1-x86-mingw32.gem'
end

gem_package "yajl-ruby-1.2.1" do
  package_name 'yajl-ruby'
  action :install
  gem_binary 'c:\opscode\chefdk\embedded\bin\gem'
  version '1.2.1'
  source "#{Chef::Config[:file_cache_path]}/yajl-ruby-1.2.1-x86-mingw32.gem"
end

cookbook_file 'C:\opscode\chefdk\embedded\lib\ruby\gems\2.0.0\specifications\foodcritic-3.0.3.gemspec'
