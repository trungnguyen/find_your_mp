require 'rails_helper'

feature 'members' do

	context 'no search has been made yet' do
		scenario 'should display an input box and a "Find" button' do
			visit members_path
			expect(page).to have_selector('input[name="postcode"]')
			expect(page).to have_button 'Find'
		end
	end

	context 'after searching with postcode' do
		scenario 'should redirect to member id page' do
			visit members_path
			fill_in 'postcode', with: 'E2 9JH'
			click_button 'Find'
			expect(current_path).to eq('/members/4138')
		end
	end
end