class BabiesController < ApplicationController

  def index
    @babies = Baby.all
  end

  def show
    @baby = Baby.find(params[:id])
    @hoy = 0
    @sum = 0
    @cant = 0
  end

end
