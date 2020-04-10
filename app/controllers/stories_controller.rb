class StoriesController < ApplicationController

	def new
		
	end

	def create
		@story = Story.new(story_params)

		@story.save
		redirect_to @story
	end

	private
		def story_params
			params.require(:story).permit(:title, :blurb, :link, :date)
		end

end