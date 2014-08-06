windows_package "Oracle VM VirtualBox #{node['chefdk_windows_bootstrap']['virtualbox_version']}" do
  action :install
  source node['chefdk_windows_bootstrap']['virtualbox_url']
  checksum node['chefdk_windows_bootstrap']['virtualbox_checksum']
  installer_type :custom
  options "-s"
end
