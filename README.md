
# DocValidator

DocValidator é uma gem Ruby projetada para validar e formatar documentos comuns no Brasil, como CPF, CNPJ, RG, CNH e outros. Ela fornece métodos fáceis de usar para verificar a validade desses documentos e formatá-los corretamente.

## Instalação

Adicione a gem ao seu `Gemfile`:

```ruby
gem 'doc_validator'
```

Depois, execute o comando para instalar:

```bash
bundle install
```

Ou, se preferir, instale diretamente com o comando `gem`:

```bash
gem install doc_validator
```

## Uso

### Validação de CPF

Para validar um CPF, use o método `.valid?`:

```ruby
DocValidator::Cpf.valid?("123.456.789-09")  # Retorna true
DocValidator::Cpf.valid?("112.345.678-900") # Retorna false
```

Para formatar um CPF, use o método `.format`:

```ruby
DocValidator::Cpf.format("12345678909")  # Retorna "123.456.789-09"
```

### Validação de CNPJ

Para validar um CNPJ, use o método `.valid?`:

```ruby
DocValidator::Cnpj.valid?("12.345.678/0001-95")  # Retorna true
DocValidator::Cnpj.valid?("123.456.789-09")      # Retorna false
```

Para formatar um CNPJ, use o método `.format`:

```ruby
DocValidator::Cnpj.format("12345678000195")  # Retorna "12.345.678/0001-95"
```

### Validação de RG

Para validar um RG, use o método `.valid?`:

```ruby
DocValidator::Rg.valid?("12.345.678/0001-95")  # Retorna true
DocValidator::Rg.valid?("11.234.567/0001-000") # Retorna false
```

Para formatar um RG, use o método `.format`:

```ruby
DocValidator::Rg.format("12345678000195")  # Retorna "12.345.678/0001-95"
```

### Validação de CNH

Em breve, adicionaremos suporte para a validação e formatação de CNH.

## Dependências

- Ruby 3.4.2 ou superior
- Nenhuma outra dependência externa além da própria gem.

## Testes

Para rodar os testes, você pode usar o RSpec. Se ainda não tiver o RSpec instalado, adicione ao seu `Gemfile`:

```ruby
gem 'rspec'
```

Então, execute:

```bash
bundle install
```

Para rodar os testes:

```bash
rspec
```

### Cobertura de Testes

DocValidator utiliza o SimpleCov para gerar cobertura de testes. Após rodar os testes, você pode verificar a cobertura gerada em `coverage/index.html`.

## Contribuição

1. Fork o projeto.
2. Crie uma branch (`git checkout -b minha-nova-feature`).
3. Faça suas alterações e adicione testes para cobrir as mudanças.
4. Execute os testes para garantir que tudo está funcionando corretamente.
5. Envie um pull request.

## Licença

Distribuído sob a licença MIT. Veja `LICENSE` para mais informações.

## Autores

- Maikon Douglas - Criador e mantenedor
