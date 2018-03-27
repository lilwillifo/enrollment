require 'rails_helper'

describe StudentCourse, type: :model do
  context 'relationships' do
    it 'belongs to a course' do
      student_course = StudentCourse.new
      expect(student_course).to respond_to(:course)
    end
    it 'belongs to a student' do
      student_course = StudentCourse.new
      expect(student_course).to respond_to(:student)
    end
  end
end
