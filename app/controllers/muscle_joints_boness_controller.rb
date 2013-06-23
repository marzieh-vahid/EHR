class MuscleJointsBonessController < ApplicationController

	def show
    @musclejointsbones = MuscleJointsBones.find(params[:id])
  end

def new
  	@musclejointsbones=MuscleJointsBones.new
  end

   def create
    @musclejointsbones = MuscleJointsBones.new(params[:musclejointsbones])
    if @musclejointsbones.save
      flash[:success] = "The  information is saves"
redirect_to(clinical_path) 
    else
      render 'new'
    end
  end
end
