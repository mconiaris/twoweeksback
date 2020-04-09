class StoriesController < ApplicationController

	def new
		
	end

	def create
		render plain: params[:story].inspect
		# render plain: params[:story][:title]
	end
end
