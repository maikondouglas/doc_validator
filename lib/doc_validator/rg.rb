module DocValidator
  class Rg
    def self.valid?(rg)
      rg = rg.gsub(/\D/, '')
      return false if rg.length != 9

      true
    end

    def self.format(rg)
      rg.gsub(/(\d{2})(\d{3})(\d{3})(\d{1})/, '\1.\2.\3-\4')
    end

    def self.mask(rg)
      rg = rg.gsub(/\D/, '')
      return rg unless rg.length == 9

      rg.gsub(/(\d{2})(\d{3})(\d{3})(\d{1})/, '***.\2.\3-*')
    end
  end
end
