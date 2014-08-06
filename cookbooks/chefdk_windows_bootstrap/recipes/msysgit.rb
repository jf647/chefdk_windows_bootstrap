cookbook_file "#{Chef::Config[:file_cache_path]}/msysgit.inf"

windows_package "Git version #{node['chefdk_windows_bootstrap']['msysgit_version']}" do
  action :install
  version node['chefdk_windows_bootstrap']['msysgit_version']
  source node['chefdk_windows_bootstrap']['msysgit_url']
  checksum node['chefdk_windows_bootstrap']['msysgit_checksum']
  installer_type :custom
  options "/verysilent /suppressmsgboxes /closeapplications /loadinf=#{Chef::Config[:file_cache_path]}/msysgit.inf"
end
