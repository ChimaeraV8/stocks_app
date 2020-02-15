class StocksController < ApplicationController
  def index
    @user = current_user.nickname
  end

  def new
  end

  def show
  end

  def edit
  end
end
