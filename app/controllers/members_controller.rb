class MembersController < ApplicationController

	def index
	end
	
	def fetch
		@member = Member.new
		@member.get_data(params[:postcode])
		redirect_to member_path(id: member_data.id)
	end

	def show
	end
end
