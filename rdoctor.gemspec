# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rdoctor/version'

Gem::Specification.new do |spec|
  spec.name          = "rdoctor"
  spec.version       = Rdoctor::VERSION
  spec.authors       = ["Al Snow"]
  spec.email         = ["jasnow@hotmail.com"]
  spec.description   = %q{Health check of Rails Stack}
  spec.summary       = %q{Runs health check on the following technologies: rvm, rails, bundle, brew, gem, psql, mysql, sqlite3, git, ruby, heroku, travis, xcode}
  spec.homepage      = "https://github.com/jasnow/rdoctor"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/) - %w[Gemfile.lock]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "cucumber"
  spec.add_development_dependency "aruba"
  spec.add_development_dependency "rails", "4.1.0.beta1"
  spec.add_development_dependency "json"
end
