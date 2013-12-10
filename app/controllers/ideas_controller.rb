class IdeasController < ApplicationController

  before_action :set_idea, :only => [:show, :edit, :update, :destroy]

  def set_idea
    @idea = Idea.find(params[:id])
  end

  def index
    if buyer_signed_in?
      @ideas = current_buyer.ideas
    elsif artist_signed_in?
      open_projects = Idea.where(:artist_id => nil)
      @ideas = current_artist.ideas + open_projects

    else 
      @ideas = Idea.all
    end

   
  end

  def show
  end

  def new
  end

  def create
    @idea = Idea.new
    @idea.post_date = params[:post_date]
    @idea.title = params[:title]
    @idea.description = params[:description]
    @idea.price = params[:price]
    @idea.category = params[:category]
    @idea.size = params[:size]
    @idea.status = params[:status]
    @idea.rating = params[:rating]
    @idea.buyer_id = current_buyer.id
    @idea.artist_id = params[:artist_id]

    if @idea.save
      redirect_to edit_idea_url(@idea), notice: "Idea created successfully."
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @idea.post_date = params[:post_date]
    @idea.title = params[:title]
    @idea.description = params[:description]
    @idea.price = params[:price]
    @idea.category = params[:category]
    @idea.size = params[:size]
    @idea.status = params[:status]
    @idea.rating = params[:rating]
    @idea.buyer_id = current_buyer.id
    @idea.artist_id = params[:artist_id]

    if @idea.save
      redirect_to ideas_url, notice: "Idea updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @idea.destroy

    redirect_to ideas_url, notice: "Idea deleted."
  end
end
