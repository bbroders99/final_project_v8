class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find_by(id: params[:id])
  end

  def new
  end

  def create
    @artist = Artist.new
    @artist.first_name = params[:first_name]
    @artist.last_name = params[:last_name]
    @artist.email = params[:email]
    @artist.bio = params[:bio]

    if @artist.save
      redirect_to artists_url, notice: "Artist created successfully."
    else
      render 'new'
    end
  end

  def edit
    @artist = Artist.find_by(id: params[:id])
  end

  def update
    @artist = Artist.find_by(id: params[:id])
    @artist.first_name = params[:first_name]
    @artist.last_name = params[:last_name]
    @artist.email = current_artist.email
    @artist.bio = params[:bio]

    if @artist.save
      redirect_to artists_url, notice: "Artist updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @artist = Artist.find_by(id: params[:id])
    @artist.destroy

    redirect_to artists_url, notice: "Artist deleted."
  end
end
