require "doc_validator"
require 'spec_helper'

RSpec.describe DocValidator::CnpjValidator do
  describe ".valid?" do
    it "valid CNPJ" do
      expect(DocValidator::CnpjValidator.valid?("12.345.678/0001-95")).to be(true)
    end

    it "invalid CNPJ" do
      expect(DocValidator::CnpjValidator.valid?("11.234.567/0001-000")).to be(false)
    end
  end

  describe ".format" do
    it "formats the CNPJ correctly" do
      expect(DocValidator::CnpjValidator.format("12345678000195")).to eq("12.345.678/0001-95")
    end
  end
end
