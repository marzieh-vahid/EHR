class GeneralsController < ApplicationController

def show
    @general = General.find(params[:id])
  end
  def new
  	@general=General.new
  end

   def create
    @general = General.new(params[:general])
    if @general.save
      flash[:success] = "The  information is saves"
redirect_to(clinical_path) 
    else
      render 'new'
    end
  end
end
