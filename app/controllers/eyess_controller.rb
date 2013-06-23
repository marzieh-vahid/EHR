class EyessController < ApplicationController

	def show
    @eyes = Eyes.find(params[:id])
  end
  def new
  	@eyes=Eyes.new
  end
  def index
    @eyes = Eyes.all
  end


   def create
    @eyes = Eyes.new(params[:eyes])
    if @eyes.save
      flash[:success] = "The  information is saves"
redirect_to(clinical_path) 
    else
      render 'new'
    end
  end
end
