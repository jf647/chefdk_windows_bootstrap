windows_package "KDiff3 (remove only)" do
  action :install
  source node['chefdk_windows_bootstrap']['kdiff3_url']
  checksum node['chefdk_windows_bootstrap']['kdiff3_checksum']
  installer_type :nsis
end
