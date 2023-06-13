# frozen_string_literal: true

require_relative 'lib/rubocop/rspec/documentation/version'

Gem::Specification.new do |spec|
  spec.name = 'rubocop-rspec-documentation'
  spec.version = RuboCop::RSpec::Documentation::VERSION
  spec.authors = ['Bob Farrell']
  spec.email = ['git@bob.frl']
  spec.licenses = ['MIT']

  spec.summary = 'Rubocop integration with rspec-documentation'
  spec.description = 'Lint RSpec examples embedded in Markdown files'
  spec.homepage = 'https://github.com/bobf/rubocop-rspec-documentation'
  spec.required_ruby_version = '>= 2.7.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = spec.homepage

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end

  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.add_runtime_dependency 'rspec-documentation', '~> 0.0.7'
  spec.add_runtime_dependency 'rubocop', '~> 1.52'
end
