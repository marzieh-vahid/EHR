class EyesystemsController < ApplicationController


	def show
    @eyesystem = Eyesystem.find(params[:id])
  end
  def new
  	@eyesystem=Eyesystem.new
  end
  def index
    @eyesystem = Eyesystem.all
  end


   def create
    @eyesystem = Eyesystem.new(params[:eyesystem])
    if @eyesystem.save
      flash[:success] = "The  information is saves"
redirect_to(clinical_path) 
    else
      render 'new'
    end
  end
end
