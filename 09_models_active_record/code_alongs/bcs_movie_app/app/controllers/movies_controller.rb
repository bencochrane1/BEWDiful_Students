class MoviesController < ApplicationController


	before_action :find_movie, :only => [:edit, :update]

	def index
		@movies = Movie.all
	end

	def show
		@movie = Movie.find(params[:id])
	end

	def search
		@movies = Movie.where("title like ?", "%#{params[:search]}%")
	end

	def new
		@movie = Movie.new
	end

	def create
		@movie = Movie.new permitted_attributes
		if @movie.save
			redirect_to movie_path(@movie.id)
		else
			render 'new'
		end
	end

	def update
		if @movie.update_attributes permitted_attributes
			redirect_to movies_path
		else
			render 'edit'
		end
	end


	protected

	def find_movie
		@movie = Movie.find(params[:id])
	end

	def permitted_attributes
		params.require(:movie).permit(:title, :description, :year_released)
	end


end
