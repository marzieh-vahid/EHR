class PsychiatricsController < ApplicationController

	def show
    @psychiatric= Psychiatric.find(params[:id])
  end
  def new
  	@psychiatric=Psychiatric.new
  end

   def create
    @psychiatric = Psychiatric.new(params[:psychiatric])
    if @psychiatric.save
      flash[:success] = "The  information is saves"
redirect_to(clinical_path) 
    else
      render 'new'
    end
  end
end
