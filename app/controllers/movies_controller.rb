
class MoviesController < ApplicationController
  def index
    @movies = Movie.released
  end
  def show
    @movie = Movie.find(params[:id])
  end
  def edit
    @movie = Movie.find(params[:id])
  end
  def new
    @movie = Movie.new
  end
  def create
    movie_data = movie_params
    @movie = Movie.create(movie_data)
    redirect_to @movie
  end
  def update
    @movie = Movie.find(params[:id])
    movie_data = movie_params
    @movie.update(movie_data) 
    redirect_to @movie
    # we can write @movie or movie_path(movies)
  end
  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to root_url
  end
  private
  def movie_params
    params.require(:movie).permit(:title, :description, :rating, :total_gross, :released_on, :director, :duration, :image_file_name)
  end
end