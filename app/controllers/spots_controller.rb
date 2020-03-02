class SpotsController < ApplicationController
  def index
    @spots = Map.all
    if user_signed_in?
      @nickname = current_user.nickname
    end
  end
end
