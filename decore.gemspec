Gem::Specification.new do |gem|
  gem.authors       = ["Gabriel Sobrinho"]
  gem.email         = ["gabriel.sobrinho@gmail.com"]
  gem.description   = %q{Decorator pattern for ruby}
  gem.summary       = %q{Decorator pattern for ruby}
  gem.homepage      = "https://github.com/nohupbrasil/decore"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "decore"
  gem.require_paths = ["lib"]
  gem.version       = "0.1.0"

  gem.add_dependency 'activesupport', '~> 3.2.0'

  gem.add_development_dependency 'rspec', '>= 2.0.0'
end
