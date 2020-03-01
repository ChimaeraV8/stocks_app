class StocksController < ApplicationController

  def index
    if user_signed_in?
    @nickname = current_user.nickname
    end
  end

  def new
  end

  def show
  end

  def edit
  end

  def create
  end
end
