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
    it 'I see all their addresses' do
      me = Student.create(name: 'me')
      address_1 = me.addresses.create(description: 'summer',
                                      street: '123 sdhf st',
                                      city: 'Denv',
                                      state: 'CO',
                                      zip: '12345')
      address_2 = me.addresses.create(description: 'winter',
                                      street: '123 beach st',
                                      city: 'sunny',
                                      state: 'FL',
                                      zip: '54321')


      visit "/students/#{me.id}"

      expect(page).to have_content(me.addresses.first.description)
      expect(page).to have_content(me.addresses.first.street)
      expect(page).to have_content(me.addresses.first.city)
      expect(page).to have_content(me.addresses.first.state)
      expect(page).to have_content(me.addresses.first.zip)
      expect(page).to have_content(me.addresses.last.description)
      expect(page).to have_content(me.addresses.last.street)
      expect(page).to have_content(me.addresses.last.city)
      expect(page).to have_content(me.addresses.last.state)
      expect(page).to have_content(me.addresses.last.zip)
    end
    it 'I can see a list of courses that student is taking' do
      me = Student.create(name: 'Margaret')
      course_1 = me.courses.create(title: 'Math')
      course_2 = me.courses.create(title: 'Science')
      course_3 = Course.create(title: 'English')

      visit "/students/#{me.id}"

      expect(page).to have_content(course_1.title)
      expect(page).to have_content(course_2.title)
      expect(page).to_not have_content(course_3.title)
    end
  end
end
