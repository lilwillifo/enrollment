require 'rails_helper'

describe 'As a user' do
  context 'when I visit show page' do
    it 'I see the name of a student' do
      me = Student.create(name: 'me')
      you = Student.create(name: 'you')

      visit "/students/#{me.id}"

      expect(page).to have_content(me.name)
      expect(page).to_not have_content(you.name)
    end
  end
end
