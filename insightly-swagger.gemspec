# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "insightly-swagger/version"

Gem::Specification.new do |s|
  s.name        = "insightly-swagger"
  s.version     = InsightlySwagger::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Zeke Sikelianos", "Tony Tam"]
  s.email       = ["zeke@wordnik.com", "fehguy@gmail.com"]
  s.homepage    = "http://swagger.io"
  s.summary     = %q{A ruby wrapper for the swagger APIs}
  s.description = %q{This gem maps to a swagger API}
  s.license     = "Apache-2.0"

  s.add_runtime_dependency 'typhoeus', '~> 0.2', '>= 0.2.1'
  s.add_runtime_dependency 'json', '~> 1.4', '>= 1.4.6'

  #s.add_development_dependency 'rspec', '~> 3.2', '>= 3.2.0'

  s.files         = `find *`.split("\n").uniq.sort.select{|f| !f.empty? }
  #s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
