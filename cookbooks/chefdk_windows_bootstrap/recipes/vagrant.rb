windows_package "Vagrant" do
  version node['chefdk_windows_bootstrap']['vagrant_version']
  action :install
  source node['chefdk_windows_bootstrap']['vagrant_url']
  #checksum node['chefdk_windows_bootstrap']['vagrant_checksum']
  installer_type :msi
end
