require "doc_validator"
require 'spec_helper'

RSpec.describe DocValidator do
  describe "VERSION" do
    it "has a version number" do
      expect(DocValidator::VERSION).to eq("0.1.2")
    end
  end
end
