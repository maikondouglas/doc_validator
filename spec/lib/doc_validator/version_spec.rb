# frozen_string_literal: true

require 'doc_validator'
require 'spec_helper'

RSpec.describe DocValidator do
  describe 'VERSION' do
    it 'has a version number' do
      expect(DocValidator::VERSION).to eq('1.2.11')
    end
  end
end
