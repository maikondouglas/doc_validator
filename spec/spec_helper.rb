# frozen_string_literal: true

require 'simplecov'
SimpleCov.start do
  add_filter '/spec/' # Ignora os arquivos da pasta de testes
end

# Certifique-se de que o SimpleCov está sendo iniciado antes de qualquer outro código
SimpleCov.at_exit do
  SimpleCov.result.format!
end
