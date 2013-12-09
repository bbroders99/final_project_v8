class PortfolioImagesController < ApplicationController

  before_action :set_portfolio_image, :only => [:show, :edit, :update, :destroy]
  before_action :artist_must_be_owner_of_portfolio_image, :only => [:edit, :update, :destroy]

  def set_portfolio_image
    @portfolio_image = PortfolioImage.find(params[:id])
  end

  def artist_must_be_owner_of_portfolio_image
    unless @portfolio_image.artist == current_artist
      redirect_to root_url, :alert => "You are not authorized for that."
    end
  end


  def index
    @portfolio_images = PortfolioImage.all
  end

  def show
    @portfolio_image = PortfolioImage.find_by(id: params[:id])
  end

  def new
  end

  def create
    @portfolio_image = PortfolioImage.new
    @portfolio_image.image = params[:image]
    @portfolio_image.artist_id = current_artist.id

    if @portfolio_image.save
      redirect_to portfolio_images_url, notice: "Portfolio image created successfully."
    else
      render 'new'
    end
  end

  def edit
    @portfolio_image = PortfolioImage.find_by(id: params[:id])
  end

  def update
    @portfolio_image = PortfolioImage.find_by(id: params[:id])
    @portfolio_image.image = params[:image]
    @portfolio_image.artist_id = current_artist.id

    if @portfolio_image.save
      redirect_to portfolio_images_url, notice: "Portfolio image updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @portfolio_image = PortfolioImage.find_by(id: params[:id])
    @portfolio_image.destroy

    redirect_to portfolio_images_url, notice: "Portfolio image deleted."
  end
end
