class EarSystemsController < ApplicationController
   	def show
    @earsystem = EarSystem.find(params[:id])
  end
  def new
  	@earsystem=EarSystem.new
  end
  def index
    @earsystem = EarSystem.all
  end


   def create
    @earsystem = EarSystem.new(params[:earsystem])
    if @earsystem.save
      flash[:success] = "The  information is saves"
redirect_to(clinical_path) 
    else
      render 'new'
    end
  end
end
