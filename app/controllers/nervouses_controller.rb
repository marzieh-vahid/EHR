class NervousesController < ApplicationController

	def show
    @nervous = Nervous.find(params[:id])
  end
 def new
  	@nervous=Nervous.new
  end

   def create
    @nervous = Nervous.new(params[:nervous])
    if @nervous.save
      flash[:success] = "The  information is saves"
redirect_to(clinical_path) 
    else
      render 'new'
    end
  end
end
 def new
  end
end
