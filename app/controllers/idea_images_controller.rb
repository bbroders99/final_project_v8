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
      #redirect_to ideas_url, notice: "Idea image updated successfully."
      redirect_to idea_url(@idea_image.idea_id), notice: "Idea image created successfully."
    else
      #render 'new'
      redirect_to edit_idea_url(@idea_image.idea_id), alert: "Must select image."
    end
  end

  def edit
  end

  def update
    @idea_image.image = params[:image]
    @idea_image.idea_id = params[:idea_id]

    if @idea_image.save
      #redirect_to ideas_url, notice: "Idea image updated successfully."
      redirect_to idea_url(@idea_image.idea_id), notice: "Idea image created successfully."
    else
      #render 'edit'
      redirect_to edit_idea_url(@idea_image.idea_id), alert: "Must select image."
    end
  end

  def destroy
    @idea_image.destroy

    redirect_to idea_url(@idea_image.idea_id), notice: "Idea image deleted."
  end
end
