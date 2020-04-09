class StoriesController < ApplicationController

	def new
		
	end

	def create
		@story = Story.new(article_params)

		@story.save
		redirect_to @story
	end

	private
		def article_params
			params.require(:article).permit(:title, :blurb, :date, :link)
		end

end