class Admin::GenresController < ApplicationController
  def index
    @genre=Genres.new
    @genres=Genres.all
  end
  
  def create
    @genre=Genres.new(genre_params)
    @genre.save
  end
  
  def edit
    @genre=Genres.find(params[:id])
  end
  
  def update
    @genre=Genres.find(params[:id])
    @genre.update(genre_params)
  end
  
  private
  
  def genre_params
    params.require(:genre).permit(:name)
  end
end
