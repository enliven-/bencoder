# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'BEncoder/version'

Gem::Specification.new do |spec|
  spec.name          = 'BEncoder'
  spec.version       = BEncoder::VERSION
  spec.authors       = ['Viksit Arora']
  spec.email         = ['viksit@mit.edu']

  spec.summary       = %q{TODO: Write a short summary, because Rubygems requires one.}
  spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = ''
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'TODO: Set to http://mygemserver.com'
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler',      '~> 1.11'
  spec.add_development_dependency 'rake',         '~> 10.0'
  spec.add_development_dependency 'rspec',        '~> 3.0'
  spec.add_development_dependency 'rspec-nc',     '~> 0.2.1'
  spec.add_development_dependency 'guard',        '~> 2.13.0'
  spec.add_development_dependency 'guard-rspec',  '~> 4.6.4'
  spec.add_development_dependency 'pry',          '~> 0.10.3'
  spec.add_development_dependency 'pry-remote',   '~> 0.1.8'
  spec.add_development_dependency 'pry-nav',      '~> 0.2.4'
  spec.add_development_dependency 'coveralls',    '~> 0.8.10'
end
