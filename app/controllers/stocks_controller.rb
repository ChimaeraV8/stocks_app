class StocksController < ApplicationController

  def index
    @stock = Stock.new
  end

  def new

  end

  def show
  end

  def edit
  end

  def create
    @stock = Stock.create(stock_params)
  end

  private

  def stock_params
    params.require(:stock).permit(:name)
  end
end
