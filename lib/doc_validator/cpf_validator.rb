module DocValidator
  class CpfValidator
    def self.valid?(cpf)
      # Algoritmo de validação do CPF
      cpf = cpf.gsub(/\D/, '')  # Remover todos os caracteres não numéricos
      return false if cpf.length != 11
      # Implementação da validação do CPF
      # ...
      true
    end

    def self.format(cpf)
      # Formatar o CPF para o padrão 000.000.000-00
      cpf.gsub(/(\d{3})(\d{3})(\d{3})(\d{2})/, '\1.\2.\3-\4')
    end
  end
end
