include_recipe 'ms_dotnet45'

windows_package "Git Extensions #{node['chefdk_windows_bootstrap']['git_extensions_version']}" do
  version node['chefdk_windows_bootstrap']['git_extensions_version']
  action :install
  source node['chefdk_windows_bootstrap']['git_extensions_url']
  checksum node['chefdk_windows_bootstrap']['git_extensions_checksum']
  installer_type :msi
 end
