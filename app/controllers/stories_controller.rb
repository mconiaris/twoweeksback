class StoriesController < ApplicationController
	# TODO: Capture Passwords in Variable
	http_basic_authenticate_with name: "admin", password: "1234",
		except: [:index, :show]


	# A frequent practice is to place the standard CRUD 
	# actions in each controller in the following order: 
	# index, show, new, edit, create, update and destroy. 

	def index
		@stories = Story.all
	end

	def show
		@story = Story.find(params[:id])
	end


	def new
		@story = Story.new
	end

	def edit
		@story = Story.find(params[:id])
	end


	def create
		@story = Story.new(story_params)

		if @story.save
			redirect_to @story
		else
			render 'new'
		end
	end

	def update
		@story = Story.find(params[:id])

		if @story.update(story_params)
			redirect_to @story
		else
			render 'edit'
		end
	end

	def destroy
		@story = Story.find(params[:id])
		@story.destroy

		redirect_to stories_path
	end

	private
		def story_params
			params.require(:story).permit(:title, :blurb, :link, :date)
		end

end