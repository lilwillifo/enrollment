require 'rails_helper'

describe 'As a user' do
  context 'when I visit course show page' do
    it 'I can see all the students in the course' do
      student_1 = Student.create(name: 'Margaret')
      student_2 = Student.create(name: 'Haley')
      student_3 = Student.create(name: 'Adam')
      course_1 = Course.create(title: 'Science')
      join_1 = StudentCourse.create(student_id: student_1.id, course_id: course_1.id)
      join_2 = StudentCourse.create(student_id: student_2.id, course_id: course_1.id)

      visit course_path(course_1)

      expect(page).to have_content(student_1.name)
      expect(page).to have_content(student_2.name)
      expect(page).to_not have_content(student_3.name)
    end
  end
end
