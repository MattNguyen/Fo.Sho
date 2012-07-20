class Url < ActiveRecord::Base	
	before_save :check_http

	def to_param
		short_url
	end

	def self.find(input)
		find_by_short_url(input)
	end

	def check_http
		long_url = self.long_url
		reformat = long_url.split.unshift("http://").join if long_url.match(/http:\/\//).nil?
		self.long_url = reformat
	end
end
