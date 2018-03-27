require 'rails_helper'

describe Student, type: :model do
  it 'requires a name' do
    expect(Student.new).to_not be_valid
  end
  context 'relationships' do
    it 'has many addresses' do
      student = Student.new
      expect(student).to respond_to(:addresses)
    end
  end
end
