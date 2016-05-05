require 'rails_helper'

describe Member, type: :model do

	describe '#get_data' do
		feature 'External request' do
			it 'queries mnis' do
			    uri = URI('http://data.parliament.uk/membersdataplatform/services/mnis/members/query/fymp=e29jn/Committees%7CBiographyEntries%7CInterests/')

			    response = Net::HTTP.get(uri)

			    expect(response).to be_an_instance_of(String)
			end
		end
	end
  end