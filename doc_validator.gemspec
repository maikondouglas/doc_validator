# frozen_string_literal: true

require_relative 'lib/doc_validator/version'

Gem::Specification.new do |spec|
  # Informações básicas da gem
  spec.name          = 'doc_validator'
  spec.version       = DocValidator::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.authors       = 'Maikon Douglas'
  spec.email         = 'maikonconta0@gmail.com'
  spec.summary       = 'Uma gem para validação e formatação de documentos'
  spec.description   = 'Essa gem valida e formata documentos como CPF, CNPJ, RG, CNH e outros.'
  spec.homepage      = 'https://github.com/maikondouglas/doc_validator'
  spec.license       = 'MIT'
  spec.metadata = {
    'homepage_uri' => 'https://github.com/maikondouglas/doc_validator',
    'source_code_uri' => 'https://github.com/maikondouglas/doc_validator',
    'bug_tracker_uri' => 'https://github.com/maikondouglas/doc_validator/issues',
    'rubygems_mfa_required' => 'true'
  }

  # Arquivos da gem
  spec.files         = Dir['lib/**/*', 'README.md', 'LICENSE']
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 2.7'

  # Dependências
  spec.add_dependency 'bundler-audit', '~> 0.9'
  spec.add_dependency 'pry', '~> 0.13'
  spec.add_dependency 'rspec', '~> 3.0'
  spec.add_dependency 'rubocop', '~> 1.0'
  spec.add_dependency 'simplecov', '~> 0.21'

  # Dependências principais
  spec.add_dependency 'bundler', '~> 2.0'
end
