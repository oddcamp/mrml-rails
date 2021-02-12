require_relative 'lib/mrml/rails/version'

Gem::Specification.new do |spec|
  spec.name          = 'mrml-rails'
  spec.version       = Mrml::Rails::VERSION
  spec.authors       = ['Joakim Nylén']
  spec.email         = ['hello@oddcamp.com']

  spec.summary       = 'Rails Template Engine for MJML (Rust-variant called MRML)'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/oddcamp/mrml-rails'
  spec.license       = 'MIT'

  spec.files         = Dir['README.md', 'lib/**/*']
  spec.require_paths = ['lib']

  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/oddcamp/mrml-rails'
  spec.metadata['changelog_uri'] = 'https://github.com/oddcamp/mrml-rails/releases'

  spec.add_runtime_dependency 'actionmailer'
  spec.add_runtime_dependency 'mrml', '~> 0.2.0'
  spec.add_runtime_dependency 'railties', ['>= 3.1']
  spec.add_development_dependency 'rspec', '~> 3.10'
  spec.add_development_dependency 'rspec-rails', '~> 4.0', '>= 4.0.2'
end
