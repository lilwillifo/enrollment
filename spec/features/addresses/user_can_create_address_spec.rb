require 'rails_helper'

describe 'As a user' do
  context 'when I visit the new addres page for a student' do
    context 'and enter in all the information' do
      it 'i am redirected to that students show page and see my changes' do
        student = Student.create!(name: 'Haley')

        visit new_student_address_path(student)

        fill_in 'Description', with: 'summer address'
        fill_in 'Street Address', with: '123 Main St'
        fill_in 'City', with: 'Denver'
        fill_in 'State', with: 'CO'
        fill_in 'Zip', with: '80218'
        click_on 'Create'

        expect(current_path).to eq(student_path(student))
        expect(page).to have_content('summer address')
        expect(page).to have_content('123 Main St')
        expect(page).to have_content('Denver')
        expect(page).to have_content('CO')
        expect(page).to have_content('80218')
      end
    end
  end
end
