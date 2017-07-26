# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rdoctor/version'

Gem::Specification.new do |spec|
  spec.name          = 'rdoctor'
  spec.version       = Rdoctor::VERSION
  spec.authors       = ['Al Snow']
  spec.email         = ['jasnow@hotmail.com']
  spec.description   = 'Health check of Rails Stack'
  spec.summary       = 'Runs health check on the following
    technologies: rvm, rails, bundle, brew, gem, psql, mysql,
    sqlite3, git, ruby, heroku, travis, xcode'
  spec.homepage      = 'https://github.com/jasnow/rdoctor'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0") - %w(Gemfile.lock)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'cucumber', '3.0.0.pre.2' # lOCKED DOWN
  spec.add_development_dependency 'aruba'
  spec.add_development_dependency 'json'
  spec.add_development_dependency 'minitest'
end
