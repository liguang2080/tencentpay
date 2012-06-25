# -*- encoding: utf-8 -*-
require File.expand_path('../lib/tencentpay/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["lg2046"]
  gem.email         = ["lg2046@gmail.com"]
  gem.description   = %q{财付通sdk}
  gem.summary       = %q{财付通sdk}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "tencentpay"
  gem.require_paths = ["lib"]
  
  gem.add_dependency 'nokogiri'
  
  gem.version       = Tencentpay::VERSION
end
