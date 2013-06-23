class MuscleJointsBoneSystemsController < ApplicationController
  def show
    @musclejointsbonesystem = MuscleJointsBoneSystem.find(params[:id])
  end

def new
  	@musclejointsbonesystem=MuscleJointsBoneSystem.new
  end

   def create
    @musclejointsbonesystem = MuscleJointsBoneSystem.new(params[:musclejointsbonesystem])
    if @musclejointsbonesystem.save
      flash[:success] = "The  information is saves"
redirect_to(clinical_path) 
    else
      render 'new'
    end
  end
end
