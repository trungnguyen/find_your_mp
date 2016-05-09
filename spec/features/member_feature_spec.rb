require 'rails_helper'

feature 'members' do

	context 'no search has been made yet' do
		scenario 'should display "Find"' do
			visit members_path
			expect(page).to have_link 'Find'
		end
	end
end