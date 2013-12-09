class IdeaImagesController < ApplicationController

  before_action :set_idea_image, :only => [:show, :edit, :update, :destroy]

  def set_idea_image
    @idea_image = IdeaImage.find(params[:id])
  end

  def index
    @idea_images = IdeaImage.all
  end

  def show
  end

  def new
  end

  def create
    @idea_image = IdeaImage.new
    @idea_image.image = params[:image]
    @idea_image.idea_id = params[:idea_id]

    if @idea_image.save
      redirect_to idea_images_url, notice: "Idea image created successfully."
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @idea_image.image = params[:image]
    @idea_image.idea_id = params[:idea_id]

    if @idea_image.save
      redirect_to idea_images_url, notice: "Idea image updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @idea_image.destroy

    redirect_to idea_images_url, notice: "Idea image deleted."
  end
end
