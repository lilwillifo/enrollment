require 'rails_helper'

describe 'As a user' do
  context 'when I visit the list of all students' do
    it 'I cant delete a student' do
      student_1 = Student.create(name: 'Kyle')
      student_2 = Student.create(name: 'Clee')
      student_3 = Student.create(name: 'Andrew')

      visit students_path
      within "student_#{student_3.id}" do
        click_on 'Delete'
      end

      expect(current_path).to eq(students_path)
      expect(page).to_not have_content('Andrew')
    end
  end
end
