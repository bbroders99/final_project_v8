class BuyersController < ApplicationController

  before_action :set_buyer, :only => [:show, :edit, :update, :destroy]
  before_action :authorize_buyer, :only => [:edit, :update, :destroy]


  def set_buyer
    @buyer = Buyer.find(params[:id])
  end

  def authorize_buyer
    unless @buyer == current_buyer
      redirect_to root_url, :alert => "You are not authorized for that."
    end
  end

  def index
    @buyers = Buyer.all
  end

  def show

  end

  def new
  end

  def create
    @buyer = Buyer.new
    @buyer.first_name = params[:first_name]
    @buyer.last_name = params[:last_name]
    @buyer.email = params[:email]

    if @buyer.save
      redirect_to ideas_url, notice: "Buyer created successfully."
    else
      render 'new'
    end
  end

  def edit

  end

  def update
    @buyer.first_name = params[:first_name]
    @buyer.last_name = params[:last_name]
    @buyer.email = current_buyer.email

    if @buyer.save
      redirect_to ideas_url, notice: "Buyer updated successfully."
    else
      render 'edit'
    end
  end

  def destroy

    @buyer.destroy

    redirect_to root_url, notice: "Buyer deleted."
  end
end
