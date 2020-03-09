class ResultsController < ApplicationController
before_action :keyword_set

  def show
  end

  private
  def keyword_set
    @stock = Stock.find(params[:id]).name
    gon.keyword = @stock
  end
end
