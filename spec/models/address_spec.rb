require 'rails_helper'

describe Address, type: :model do
  context 'validations' do
    it 'belongs to a student' do
      address = Address.new
      expect(address).to respond_to(:student)
    end
  end
end
