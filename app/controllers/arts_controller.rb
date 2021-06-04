class ArtsController < ApplicationController
	def index
		@arts = Art.all
	end

	def new
		@art = Art.new
	end

	def create
		@art = Art.new(art_params)
		if @art.save
			redirect_to arts_path
		end
	end

	private
	def art_params
		params.require(:art).permit(:images, :author)
	end
end
