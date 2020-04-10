class StoriesController < ApplicationController


	# A frequent practice is to place the standard CRUD 
	# actions in each controller in the following order: 
	# index, show, new, edit, create, update and destroy. 

	def index
		@articles = Article.all
	end

	def show
		@story = Story.find(params[:id])
	end


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