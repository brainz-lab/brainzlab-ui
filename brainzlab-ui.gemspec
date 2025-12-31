# frozen_string_literal: true

require_relative 'lib/brainzlab/ui/version'

Gem::Specification.new do |spec|
  spec.name = 'brainzlab-ui'
  spec.version = Brainzlab::UI::VERSION
  spec.authors = ['Brainz Lab']
  spec.email = ['team@brainzlab.ai']

  spec.summary = 'Unified design system for Brainz Lab products'
  spec.description = 'Anthropic/Claude-inspired design system with Phlex components, Tailwind CSS tokens, and reusable UI patterns.'
  spec.homepage = 'https://github.com/brainzlab/brainzlab-ui'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 3.2.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/brainzlab/brainzlab-ui'
  spec.metadata['changelog_uri'] = 'https://github.com/brainzlab/brainzlab-ui/blob/main/CHANGELOG.md'
  spec.metadata['rubygems_mfa_required'] = 'true'

  spec.files = Dir[
    '{app,lib}/**/*',
    'LICENSE',
    'README.md',
    'CHANGELOG.md'
  ]
  spec.require_paths = ['lib']

  spec.add_dependency 'phlex', '~> 2.0'
  spec.add_dependency 'phlex-rails', '~> 2.0'
  spec.add_dependency 'rails', '>= 7.0'

  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.12'
end
