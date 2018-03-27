require 'rails_helper'

describe 'As a user' do
  context 'when I visit create a student page' do
    context 'and I fill in a name and click submit' do
      it 'I see the new students name on the student show page' do

        visit '/students/new'

        fill_in 'Name', with: 'Margaret'
        click_on 'Create'

        expect(current_path).to eq("/students/#{Student.all.last.id}")
        expect(page).to have_content('Margaret')
      end
    end
  end
end
