class NervesController < ApplicationController
 	def show
    @nerve = Nerve.find(params[:id])
  end
  def new
  	@nerve=Nerve.new
  end
  def index
    @nerve = Nerve.all
  end


   def create
    @nerve = Nerve.new(params[:nerve])
    if @nerve.save
      flash[:success] = "The  information is saves"
redirect_to(clinical_path) 
    else
      render 'new'
    end
  end
end
