class IdeaImagesController < ApplicationController


  def index
    @idea_images = IdeaImage.all
  end

  def show
    @idea_image = IdeaImage.find_by(id: params[:id])
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
    @idea_image = IdeaImage.find_by(id: params[:id])
  end

  def update
    @idea_image = IdeaImage.find_by(id: params[:id])
    @idea_image.image = params[:image]
    @idea_image.idea_id = params[:idea_id]

    if @idea_image.save
      redirect_to idea_images_url, notice: "Idea image updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @idea_image = IdeaImage.find_by(id: params[:id])
    @idea_image.destroy

    redirect_to idea_images_url, notice: "Idea image deleted."
  end
end
