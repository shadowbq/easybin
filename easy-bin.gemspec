# -*- encoding: utf-8 -*-
require File.expand_path('../lib/easybin/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["shadowbq"]
  gem.email         = ["shadowbq@gmail.com"]
  gem.description   = %q{bundle create easybin}
  gem.summary       = gem.description
  gem.homepage      = "https://github.com/shadowbq/easybin"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "easybin"
  gem.require_paths = ["lib"]
  gem.version       = Easy::Bin::VERSION

  gem.add_dependency('example', '~> 1.0')
  gem.add_development_dependency('bump')
  
end
