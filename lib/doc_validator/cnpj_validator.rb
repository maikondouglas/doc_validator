module DocValidator
  class CnpjValidator
    def self.valid?(cnpj)
      # Algoritmo de validação do CNPJ
      cnpj = cnpj.gsub(/\D/, '')  # Remover todos os caracteres não numéricos
      return false if cnpj.length != 14
      # Implementação da validação do CNPJ
      # ...
      true
    end

    def self.format(cnpj)
      # Formatar o CNPJ para o padrão 00.000.000/0001-00
      cnpj.gsub(/(\d{2})(\d{3})(\d{3})(\d{4})(\d{2})/, '\1.\2.\3/\4-\5')
    end
  end
end
