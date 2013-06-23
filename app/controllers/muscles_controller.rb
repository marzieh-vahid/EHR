class MusclesController < ApplicationController


def show
    @muscle = Muscle.find(params[:id])
  end

def new
  	@muscle=Muscle.new
  end

   def create
    @muscle = Muscle.new(params[:muscle])
    if @muscle.save
      flash[:success] = "The  information is saves"
redirect_to(clinical_path) 
    else
      render 'new'
    end
  end
end
