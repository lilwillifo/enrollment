require 'rails_helper'

describe Student, type: :model do
  it 'requires a name' do
    expect(Student.new).to_not be_valid
  end
end
