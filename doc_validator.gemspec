require_relative 'lib/doc_validator/version'

Gem::Specification.new do |spec|
  # Informações básicas da gem
  spec.name          = "doc_validator"
  spec.version       = DocValidator::VERSION
  spec.authors       = ["Seu Nome"]
  spec.email         = ["seuemail@exemplo.com"]
  spec.summary       = "Uma gem para validação e formatação de documentos"
  spec.description   = "Essa gem valida e formata documentos como CPF, CNPJ, RG, CNH e outros."
  spec.homepage      = "https://github.com/maikondouglas/doc_validator"
  spec.license       = "MIT"

  # Arquivos da gem
  spec.files         = Dir["lib/**/*", "README.md", "LICENSE"]
  spec.require_paths = ["lib"]

  # Dependências
  spec.add_dependency "rspec", "~> 3.0", group: [:test]
  spec.add_dependency "simplecov", "~> 0.21", group: [:test]
  spec.add_dependency "bundler-audit", "~> 0.9", group: [:development, :test]
  spec.add_dependency "pry", "~> 0.13", group: [:development]
  spec.add_dependency "rubocop", "~> 1.0", group: [:development]

  # Dependências principais
  spec.add_dependency "bundler", "~> 2.0"
end
