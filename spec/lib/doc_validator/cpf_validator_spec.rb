require "doc_validator"
require 'spec_helper'

RSpec.describe DocValidator::CpfValidator do
  describe ".valid?" do
    it "valid CPF" do
      expect(DocValidator::CpfValidator.valid?("123.456.789-09")).to be(true)
    end

    it "invalid CPF" do
      expect(DocValidator::CpfValidator.valid?("112.345.678-900")).to be(false)
    end
  end

  describe ".format" do
    it "format the CPF correctly" do
      expect(DocValidator::CpfValidator.format("12345678909")).to eq("123.456.789-09")
    end
  end
end
