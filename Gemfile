# Especificando a versão do Ruby
ruby "3.4.2"

# Dependências principais
gem "bundler", "~> 2.0"

# Dependências de desenvolvimento
group :development, :test do
  gem "rspec"                     # RSpec para testes
  gem "bundler-audit"             # Para auditoria de vulnerabilidades em gems
  gem "pry"                       # Ferramenta de depuração interativa (opcional)
  gem "rubocop", require: false   # Para linting do código (opcional)
end

# Dependência de teste adicional para cobertura de código
group :test do
  gem "simplecov", require: false # Para cobertura de código
end
