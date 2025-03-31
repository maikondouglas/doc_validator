# frozen_string_literal: true

module DocValidator
  class Cnpj
    def self.valid?(cnpj)
      cnpj = cnpj.gsub(/\D/, '')
      return false if cnpj.length != 14

      true
    end

    def self.format(cnpj)
      cnpj.gsub(/(\d{2})(\d{3})(\d{3})(\d{4})(\d{2})/, '\1.\2.\3/\4-\5')
    end

    def self.mask(cnpj)
      cnpj = cnpj.gsub(/\D/, '')
      return cnpj unless cnpj.length == 14

      cnpj.gsub(/(\d{2})(\d{3})(\d{3})(\d{4})(\d{2})/, '**.*\2.\3/\4-**')
    end
  end
end
