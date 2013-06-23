class EyeSystemsController < ApplicationController
 	def show
    @eyesystem = EyeSystem.find(params[:id])
  end
  def new
  	@eyesystem=EyeSystem.new
  end
  def index
    @eyesystem = EyeSystem.all
  end


   def create
    @eyesystem = EyeSystem.new(params[:eyesystem])
    if @eyesystem.save
      flash[:success] = "The  information is saves"
redirect_to(clinical_path) 
    else
      render 'new'
    end
  end
end
