class SpotsController < ApplicationController
  def index
    @spots = Map.all
  end
end
