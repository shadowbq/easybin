# -*- encoding: utf-8 -*-
require File.expand_path('../lib/easy-bin/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["shadowbq"]
  gem.email         = ["shadowbq@gmail.com"]
  gem.description   = %q{bundle create easy-bin}
  gem.summary       = gem.description
  gem.homepage      = "https://github.com/shadowbq/easy-bin"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "easy-bin"
  gem.require_paths = ["lib"]
  gem.version       = Easy::Bin::VERSION

  gem.add_dependency('example', '~> 1.0')

end
