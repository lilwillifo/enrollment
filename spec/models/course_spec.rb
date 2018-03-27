require 'rails_helper'

describe Course, type: :model do
  context 'relationships' do
    it 'has many students' do
      course = Course.new
      expect(course).to respond_to(:students)
    end

    it 'has many studentcourses' do
      course = Course.new
      expect(course).to respond_to(:student_courses)
    end
  end
end
