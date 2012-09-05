module UrlsHelper
	require 'uri'
	def summarize(url)
		summ = URI(url).host
		"#{summ}/..."
	end
end
