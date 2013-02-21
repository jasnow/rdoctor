# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rdoctor/version'

Gem::Specification.new do |gem|
  gem.name          = "rdoctor"
  gem.version       = Rdoctor::VERSION
  gem.authors       = ["Al Snow"]
  gem.email         = ["jasnow@jasnow"]
  gem.description   = %q{Health check of Rails Stack}
  gem.summary       = %q{Runs health check on the following technolgies: 
rvm, rails, bundle, brew, gem, psql, mysql, sqlite3, git, ruby, heroku, travis, xcode}
  gem.homepage      = "https://github.com/jasnow/rdoctor"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
