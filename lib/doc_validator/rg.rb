module DocValidator
  class Rg
    def self.valid?(rg)
      # Algoritmo de validação do RG
      rg = rg.gsub(/\D/, '')  # Remover todos os caracteres não numéricos
      return false if rg.length != 9
      # Implementação da validação do RG
      # ...
      true
    end

    def self.format(rg)
      # Formatar o RG para o padrão XX.XXX.XXX-X
      rg.gsub(/(\d{2})(\d{3})(\d{3})(\d{1})/, '\1.\2.\3-\4')
    end
  end
end
