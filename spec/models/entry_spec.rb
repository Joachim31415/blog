require 'rails_helper'

describe Entry, type: :model do
  describe 'title' do
    it 'has content' do
      expect(described_class.new(title: nil)).not_to be_valid
    end
  end
end
