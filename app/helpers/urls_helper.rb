module UrlsHelper
	require 'URI'
	def summarize(url)
		summ = URI(url).host
		"#{summ}/..."
	end
end
