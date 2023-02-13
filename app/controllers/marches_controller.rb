class MarchesController < ApplicationController

  def index
  end
  
  def search
    @vegetables = Vegetable.search(params[:keyword])
  end
end