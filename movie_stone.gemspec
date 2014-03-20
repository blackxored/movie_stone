# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'movie_stone/version'

Gem::Specification.new do |spec|
  spec.name          = "movie_stone"
  spec.version       = MovieStone::VERSION
  spec.authors       = ["Adrian Perez"]
  spec.email         = ["adrianperez.deb@gmail.com"]
  spec.summary       = %q{A simple ruby gems for movie fans}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/blackxored/movie_stone"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.bindir        = "bin"
  spec.executables   << 'moviestone'

  spec.add_runtime_dependency "mail"
  spec.add_runtime_dependency "faraday"
  spec.add_runtime_dependency "hashie"
  spec.add_runtime_dependency "activesupport", "~> 4.1.0.rc1"
  spec.add_runtime_dependency "gli", "2.9.0"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rspec", "~> 3.0.0.beta2"
  spec.add_development_dependency "aruba"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "guard-rspec"
end
