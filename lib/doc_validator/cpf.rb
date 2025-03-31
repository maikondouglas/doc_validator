# frozen_string_literal: true

module DocValidator
  class Cpf
    def self.valid?(cpf)
      cpf = cpf.gsub(/\D/, '')
      return false if cpf.length != 11

      true
    end

    def self.format(cpf)
      cpf.gsub(/(\d{3})(\d{3})(\d{3})(\d{2})/, '\1.\2.\3-\4')
    end

    def self.mask(cpf)
      cpf = cpf.gsub(/\D/, '')
      return cpf unless cpf.length == 11

      cpf.gsub(/(\d{3})(\d{3})(\d{3})(\d{2})/, '***.\2.\3-**')
    end
  end
end
