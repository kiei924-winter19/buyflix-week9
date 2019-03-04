class GenresController < ApplicationController
    
  def index
    @genres = Genre.all
  end
  
  def show
    @genre = Genre.find(params[:id])
  end
  
  def new
    @genre = Genre.new
  end
  
  def create
    @genre = Genre.new
    @genre.name = params[:genre][:name]
    @genre.save
    redirect_to "/genres"
  end
  
  def edit
    @genre = Genre.find(params[:id])
  end
  
  def update
    @genre = Genre.find(params[:id])
    @genre.name = params[:genre][:name]
    @genre.save
    redirect_to "/genres"
  end
  
  def destroy
    @genre = Genre.find(params[:id])
    @genre.delete
    redirect_to "/genres"
  end
  
end
