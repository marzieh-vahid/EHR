class SkinsController < ApplicationController

	def show
    @skin= Skin.find(params[:id])
  end
  def new
  	@skin=Skin.new
  end

   def create
    @skin = Skin.new(params[:skin])
    if @skin.save
      flash[:success] = "The Skin information is saves"
redirect_to(clinical_path) 
    else
      render 'new'
    end
  end
end
