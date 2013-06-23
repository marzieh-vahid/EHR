class HistoriesController < ApplicationController
	def show
    @history= History.find(params[:id])
  end
  def new
  	@history=History.new
  end

   def create
    @history = History.new(params[:history])
    if @history.save
      flash[:success] = "The  information is saves"
redirect_to(clinical_path) 
    else
      render 'new'
    end
  end
end
