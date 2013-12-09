class BuyersController < ApplicationController

  def index
    @buyers = Buyer.all
  end

  def show
    @buyer = Buyer.find_by(id: params[:id])
  end

  def new
  end

  def create
    @buyer = Buyer.new
    @buyer.first_name = params[:first_name]
    @buyer.last_name = params[:last_name]
    @buyer.email = params[:email]

    if @buyer.save
      redirect_to buyers_url, notice: "Buyer created successfully."
    else
      render 'new'
    end
  end

  def edit
    @buyer = Buyer.find_by(id: params[:id])
  end

  def update
    @buyer = Buyer.find_by(id: params[:id])
    @buyer.first_name = params[:first_name]
    @buyer.last_name = params[:last_name]
    @buyer.email = current_buyer.email

    if @buyer.save
      redirect_to buyers_url, notice: "Buyer updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @buyer = Buyer.find_by(id: params[:id])
    @buyer.destroy

    redirect_to buyers_url, notice: "Buyer deleted."
  end
end
