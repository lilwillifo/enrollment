require 'rails_helper'

describe 'As a user' do
  context 'and I visit the show page' do
    it 'I see links to a list of all students' do
      student = Student.create(name:'kasjhdf')
      visit student_path(student)
      click_on 'All Students'

      expect(current_path).to eq(students_path)
    end
    it 'I see link to create a new student' do
      student = Student.create(name:'kasjhdf')
      visit student_path(student)
      click_on 'Add a Student'

      expect(current_path).to eq(new_student_path)
    end
  end
end
