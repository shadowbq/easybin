$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
name = "easybin"
require "#{name}/version"


Gem::Specification.new do |gem|
  gem.platform      = Gem::Platform::RUBY
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
  gem.license       = 'MIT'
  
  #Gonna is a mechanize example bin that fetches are parses a fake page.
  gem.add_dependency('mechanize')
  
  gem.add_dependency('blankblank', '~> 0.0')
  gem.add_development_dependency('bump')
  gem.add_development_dependency('minitest-colorize')
  gem.add_development_dependency('turn')
  gem.add_development_dependency('ansi')
  gem.add_development_dependency('simplecov')
end
