class UrlsController < ApplicationController
  def index
  	@urls = Url.all
  end

  def create
  	@new_url = Url.new(params[:url])
  	@new_url.short_url= generate_short_url_key 
  	@new_url.save
  	redirect_to root_path
  end

  def show
  	@url = Url.find(params[:id])
  	redirect_to @url.long_url
  end

  def new
  	@url = Url.new
  end

	private
	def generate_short_url_key
		rand = SecureRandom.urlsafe_base64[0,6]
	end
end
