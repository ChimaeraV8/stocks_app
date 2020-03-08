class SpotsController < ApplicationController
  def index
    @spots = Map.all
  end

  def new
    @name = Map.new
  end
end
