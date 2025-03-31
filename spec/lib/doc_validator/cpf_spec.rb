require "doc_validator"
require 'spec_helper'

RSpec.describe DocValidator::Cpf do
  describe ".valid?" do
    it "valid CPF" do
      expect(DocValidator::Cpf.valid?("123.456.789-09")).to be(true)
    end

    it "invalid CPF" do
      expect(DocValidator::Cpf.valid?("112.345.678-900")).to be(false)
    end
  end

  describe ".format" do
    it "format the CPF correctly" do
      expect(DocValidator::Cpf.format("12345678909")).to eq("123.456.789-09")
    end
  end

  describe ".mask" do
    it "mask the CPF correctly" do
      expect(DocValidator::Cpf.mask("12345678909")).to eq("***.456.789-**")
    end
  end
end
