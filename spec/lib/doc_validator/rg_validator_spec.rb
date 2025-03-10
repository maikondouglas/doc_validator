require "doc_validator"
require 'spec_helper'

RSpec.describe DocValidator::RgValidator do
  describe ".valid?" do
    it "valid RG" do
      expect(DocValidator::RgValidator.valid?("12.345.678-9")).to be(true)
    end

    it "invalid RG" do
      expect(DocValidator::RgValidator.valid?("11.234.567-00")).to be(false)
    end
  end

  describe ".format" do
    it "formats the RG correctly" do
      expect(DocValidator::RgValidator.format("123456789")).to eq("12.345.678-9")
    end
  end
end
