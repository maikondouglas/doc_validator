# frozen_string_literal: true

require 'doc_validator'
require 'spec_helper'

RSpec.describe DocValidator::Rg do
  describe '.valid?' do
    it 'valid RG' do
      expect(DocValidator::Rg.valid?('12.345.678-9')).to be(true)
    end

    it 'invalid RG' do
      expect(DocValidator::Rg.valid?('11.234.567-00')).to be(false)
    end
  end

  describe '.format' do
    it 'formats the RG correctly' do
      expect(DocValidator::Rg.format('123456789')).to eq('12.345.678-9')
    end
  end

  describe '.mask' do
    it 'mask the RG correctly' do
      expect(DocValidator::Rg.mask('123456789')).to eq('***.345.678-*')
    end
  end
end
