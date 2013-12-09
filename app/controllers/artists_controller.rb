class ArtistsController < ApplicationController

  before_action :set_artist, :only => [:show, :edit, :update, :destroy]

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def index
    @artists = Artist.all
  end

  def show
  
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

  end

  def update
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
  
    @artist.destroy

    redirect_to artists_url, notice: "Artist deleted."
  end
end
