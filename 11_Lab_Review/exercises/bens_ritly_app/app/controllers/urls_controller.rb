class UrlsController < ApplicationController
  def new
  	@url = Url.new
  end

  def show
  	@url = Url.find(params[:id])
  end

  def search
		@urls = Url.where("link like ?", "%#{params[:search]}%")
	end

	def create
		@url = Url.new params.require(:url).permit(:link)
		@url.generate_hash_code
		if @url.save
			flash[:notice] = 'URL added'
			redirect_to url_path(@url)
		else
			render 'new'
		end
	end

	def redirect
		@url = Url.where(:hash_code => params[:hash_code]).first
		redirect_to @url.long_link
	end

end
