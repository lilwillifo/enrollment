require 'rails_helper'

describe 'As a user' do
  context 'when I visit the edit page and fill in the form' do
    it 'I see the students updated name on their show page' do
      mar = Student.create!(name: 'Mar')

      visit edit_student_path(mar)
      fill_in 'Name', with: 'Margaret'
      click_on 'Update'

      expect(current_path).to eq(student_path(mar))
      expect(page).to have_content('Margaret')
    end
  end
end
