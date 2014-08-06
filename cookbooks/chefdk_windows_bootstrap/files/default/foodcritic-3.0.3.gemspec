# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "foodcritic"
  s.version = "3.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Andrew Crump"]
  s.date = "2013-10-13"
  s.description = "Lint tool for Opscode Chef cookbooks."
  s.executables = ["foodcritic"]
  s.files = ["bin/foodcritic"]
  s.homepage = "http://foodcritic.io"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.2")
  s.rubygems_version = "2.0.14"
  s.summary = "foodcritic-3.0.3"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<gherkin>, ["~> 2.11.7"])
      s.add_runtime_dependency(%q<nokogiri>, ["~> 1.5.4"])
      s.add_runtime_dependency(%q<rake>, [">= 0"])
      s.add_runtime_dependency(%q<treetop>, ["~> 1.4.10"])
      s.add_runtime_dependency(%q<yajl-ruby>, ["~> 1.2.1"])
      s.add_runtime_dependency(%q<erubis>, [">= 0"])
    else
      s.add_dependency(%q<gherkin>, ["~> 2.11.7"])
      s.add_dependency(%q<nokogiri>, ["~> 1.5.4"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<treetop>, ["~> 1.4.10"])
      s.add_dependency(%q<yajl-ruby>, ["~> 1.1.0"])
      s.add_dependency(%q<erubis>, [">= 0"])
    end
  else
    s.add_dependency(%q<gherkin>, ["~> 2.11.7"])
    s.add_dependency(%q<nokogiri>, ["~> 1.5.4"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<treetop>, ["~> 1.4.10"])
    s.add_dependency(%q<yajl-ruby>, ["~> 1.1.0"])
    s.add_dependency(%q<erubis>, [">= 0"])
  end
end
