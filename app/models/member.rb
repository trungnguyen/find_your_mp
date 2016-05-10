require 'net/http'
require 'crack'

class Member

	attr_reader :name

	def initialize
		@name
	end

	def set_properties(response)
		@name = response['Members']['Member']['FullTitle']
	end

	def get_data(postcode)
		postcode = postcode.tr(" ", "")
		url = "http://data.parliament.uk/membersdataplatform/services/mnis/members/query/fymp=#{postcode}"
		uri = URI.parse(url)
		req = Net::HTTP::Get.new(uri.to_s)
		res = Net::HTTP.start(uri.host, uri.port) { |http| 
			http.request(req)
		}
		p "response start"
		p res
		p "response end"
		json = Crack::XML.parse(res.body)
		#p json
	end
end