class BidsController < ApplicationController

  def index
    @bids = Bid.all
  end

  def show
    @bid = Bid.find_by(id: params[:id])
  end

  def new
  end

  def create
    @bid = Bid.new
    @bid.idea_id = params[:idea_id]
    @bid.artist_id = current_artist.id

    if @bid.save
      redirect_to bids_url, notice: "Bid created successfully."
    else
      render 'new'
    end
  end

  def edit
    @bid = Bid.find_by(id: params[:id])
  end

  def update
    @bid = Bid.find_by(id: params[:id])
    @bid.idea_id = params[:idea_id]
    @bid.artist_id = params[:artist_id]

    if @bid.save
      redirect_to bids_url, notice: "Bid updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @bid = Bid.find_by(id: params[:id])
    @bid.destroy

    redirect_to bids_url, notice: "Bid deleted."
  end
end
