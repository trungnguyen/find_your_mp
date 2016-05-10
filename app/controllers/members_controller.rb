class MembersController < ApplicationController

	def index
	end
	
	def fetch
		redirect_to member_path(id: '4138')
	end

	def show
	end
end
