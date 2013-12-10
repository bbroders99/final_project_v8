class BidsController < ApplicationController

  before_action :set_bid, :only => [:show, :edit, :update, :destroy]

  def set_bid
    @bid = Bid.find(params[:id])
  end


  def index
    @bids = Bid.all
  end

  def show
  end

  def new
  end

  def create
    @bid = Bid.new
    @bid.idea_id = params[:idea_id]
    @bid.artist_id = current_artist.id

    if @bid.save
      redirect_to ideas_url, notice: "Bid created successfully."
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @bid.idea_id = params[:idea_id]
    @bid.artist_id = current_artist.id

    if @bid.save
      redirect_to ideas_url, notice: "Bid updated successfully."
    else
      render 'edit'
    end
  end

  def destroy

    @bid.destroy

    redirect_to ideas_url, notice: "Bid deleted."
  end
end
