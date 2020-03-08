class StocksController < ApplicationController

  def index
    @stock = Stock.new
  end

  def show
    user = Stock.where(user_id: params[:id])
    @stocks = Stock.where(user_id: params[:id])
  end

  def create
    @stock = Stock.create(stock_params)
  end

  def destroy
    stock = Stock.find(params[:id])
    stock.destroy
    redirect_to "/stocks/#{current_user.id}"
  end

  private

  def stock_params
    params.require(:stock).permit(:name).merge(user_id: current_user.id)
  end
end
