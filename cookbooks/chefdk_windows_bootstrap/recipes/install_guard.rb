%w(guard guard-rspec).each do |gem|
  gem_package gem do
    action :install
    gem_binary 'c:\opscode\chefdk\embedded\bin\gem'
  end
end
