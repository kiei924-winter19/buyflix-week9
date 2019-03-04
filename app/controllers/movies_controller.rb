class MoviesController < ApplicationController
    
  def index
    @all_movies = Movie.all
  end
    
  def show
    movie_id = params[:id]
    @movie = Movie.find(movie_id)
  end
    
  def create
    movie = Movie.new
    movie.title = params[:movie][:title]
    movie.summary = params[:movie][:summary]
    movie.year_released = params[:movie][:year_released]
    movie.poster = params[:movie][:poster]
    movie.save
    redirect_to "/movies"
  end
  
  def edit
    @movie = Movie.find(params[:id])
  end
  
  def update
    movie = Movie.find(params[:id])
    movie.title = params[:movie][:title]
    movie.summary = params[:movie][:summary]
    movie.year_released = params[:movie][:year_released]
    movie.poster = params[:movie][:poster]
    movie.save
    redirect_to "/movies"
  end
  
  def destroy
    movie = Movie.find(params[:id])
    movie.delete
    redirect_to "/movies"
  end
    
end
