Gem::Specification.new do |spec|
  spec.name          = "doc_validator"
  spec.version       = DocValidator::VERSION
  spec.authors       = ["Maikon Douglas"]
  spec.email         = ["maikonconta0@gmail.com"]

  spec.summary       = "Uma gem para validar e formatar documentos como CPF, CNPJ, RG, CNH"
  spec.description   = "Essa gem fornece funcionalidades para validar, formatar e gerar documentos comuns como CPF, CNPJ, RG e CNH."
  spec.homepage      = "https://github.com/maikondouglas/doc_validator"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*", "README.md", "LICENSE.txt"]
  spec.require_paths = ["lib"]

  spec.add_dependency "bundler", "~> 2.0"

  spec.add_development_dependency "rspec", "~> 3.10"
end
