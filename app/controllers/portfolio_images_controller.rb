class PortfolioImagesController < ApplicationController

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
