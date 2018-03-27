require 'rails_helper'

describe 'As a user' do
  context 'when I visit /students' do
    it 'I see a list of student names' do
      student_1 = Student.create!(name: 'Margaret')
      student_2 = Student.create!(name: 'Haley')
      student_3 = Student.create!(name: 'Adam')
      student_4 = Student.create!(name: 'Andrew')

      visit '/students'

      expect(page).to have_content(student_1.name)
      expect(page).to have_content(student_2.name)
      expect(page).to have_content(student_3.name)
      expect(page).to have_content(student_4.name)
    end
  end
end
