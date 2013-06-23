class EarsystemsController < ApplicationController

def show
    @earsystem = Earsystem.find(params[:id])
  end
  def new
  	@earsystem=Earsystem.new
  end
  def index
    @earsystem = Earsystem.all
  end


   def create
    @earsystem = Earsystem.new(params[:earsystem])
    if @earsystem.save
      flash[:success] = "The  information is saves"
redirect_to(clinical_path) 
    else
      render 'new'
    end
  
end
end
